<script>
    export let updateScreen
    export let screens
    export let screen
    import Logo from "./Logo.svelte";
</script>

<header>
  <div class="logo">
    <Logo {screens} {updateScreen} /> <h2 class=header1>Motoko Bootcamp Prep</h2>
  </div>

<nav>

    <div
      class="page-link {screen == screens.BOOTCAMP ? 'selected' : ''}"
      on:click={() => updateScreen(screens.BOOTCAMP)}
    >
      Bootcamp
    </div>
    <div
    class="page-link {screen == screens.MOTOKO ? 'selected' : ''}"
    on:click={() => updateScreen(screens.MOTOKO)}
  >
      Motoko
  </div>
  <div
  class="page-link {screen == screens.JAVASCRIPT ? 'selected' : ''}"
  on:click={() => updateScreen(screens.JAVASCRIPT)}
>
    Javascript
</div>
<div
class="page-link {screen == screens.HTMLCSS ? 'selected' : ''}"
on:click={() => updateScreen(screens.HTMLCSS)}
>
  HTML&CSS
</div>
 
</header>

<style lang="scss">
  .header1 {
    color:#74ff75;
    font-size: 25px;
    margin-left: 15px;
  }

  header {
    border-radius: 26px;
    border-style: solid;
    border-color: #74ff75;
    background-color: rgb(28, 24, 24);
    color: white;
    width: 100%;
    display: grid;
    align-items: center;
    grid-template-columns: 1fr 400px 1fr;
  }

  nav {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }

  .page-link {
    font-weight: bold;
    padding: 8px;
    font-size: 30px;
    color: #097bd2;
    user-select: none;
    &.selected {
      color: #74ff75;
    }
    &:hover {
      &:not(.selected) {
        cursor: pointer;
        color: rgb(176, 22, 150);
      }
    }
  }

  // .login-info {
  //   display: flex;
  //   flex-direction: row;
  //   align-items: center;
  //   justify-content: flex-end;
  // }

  @media (max-width: 1000px) {
    header {
      grid-template-columns: 100%;
    }

    // .login-info {
    //   display: none;
    // }

    .logo {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-bottom: 10px;
    }
  }
</style>

