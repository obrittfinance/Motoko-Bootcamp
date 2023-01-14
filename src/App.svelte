<script>
  
  import { onMount } from "svelte"
  import Header from "./components/Header.svelte"
  import Home from "./screens/Home.svelte"
  import Motoko from "./screens/Motoko.svelte"
  import Javascript from "./screens/Javascript.svelte"
  import Htmlcss from "./screens/Htmlcss.svelte"
  import Bootcamp from "./screens/Bootcamp.svelte"


 
  const screens = {
    HOME: "HOME",
    MOTOKO: "MOTOKO",
    JAVASCRIPT: "JAVASCRIPT",
    HTMLCSS:"HTMLCSS",
    BOOTCAMP: "BOOTCAMP"
  }

  let screen = screens.HOME
  let principalId = ""




  function updateScreen(newScreen) {
    screen = newScreen
  }


</script>

<div class="container">
  <Header
      {updateScreen}
    {screens}
    {screen}
  />


    <main>
      {#if screen == screens.HOME}
        <Home {updateScreen} {screens} />
      {:else if screen == screens.MOTOKO}
        <Motoko {updateScreen} {screens}/>
      {:else if screen == screens.JAVASCRIPT}
        <Javascript {updateScreen} {screens}/>
        {:else if screen == screens.HTMLCSS}
        <Htmlcss {updateScreen} {screens}/>
        {:else if screen == screens.BOOTCAMP}
        <Bootcamp {updateScreen} {screens}/> 
      {:else}
        Page not found
      {/if}

    </main>
  </div>
  <style global lang="scss">
    @use "./styles/global.scss" as *;
  
    .container {
      max-width: 1440px;
      margin: 0 auto;
      padding: 40px;
    }
  
    main {
      color: rgb(13, 201, 28);
      margin: 40px 0;
    }
  </style>
