<script>
  
  import { onMount } from "svelte"
  import Header from "./components/Header.svelte"
  import Home from "./screens/Home.svelte"

 
  const screens = {
    HOME: "HOME",
  }
  let screen = screens.HOME
   function updateScreen(newScreen) {
    screen = newScreen
  }
</script>

<div class="container">
  <Header
      {updateScreen}
    {screens}
  
  />



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
