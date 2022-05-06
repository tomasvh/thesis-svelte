<script>

	import { Router } from 'svelte-navigator'
	import Header from './UI/Header.svelte'
	import Footer from './UI/Footer.svelte'
	import Main from './UI/Main.svelte'
	import NavMenu from './UI/NavMenu.svelte'

	let headerMessage = "Welcome to Tomas Blog made in Svelte"
	let footerMessage = "Here be the foot"
	let mainMessage = "Welcome to the Blog page"
	let aboutMessage = "So here is a section about me, my self, and everything in between"


</script>

<div class="site-container">
	<Router primary={false}>
		<Header welcome="{headerMessage}" />
	
	
		<NavMenu />
	
		<Main mainMessage="{mainMessage}" aboutMessage={aboutMessage} />
	
		<Footer footerMessage="{footerMessage}" />
	</Router>
</div>



<style>
	.site-container {
		display: flex;
		flex-direction: column;
	}
</style>