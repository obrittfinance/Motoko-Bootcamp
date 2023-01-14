<script>
    export let updateScreen
    export let screens
    import pic from '../assets/Motoko.svg'

  
  </script>
  
<div

   class="page-link {screen == screens.HOME ? 'selected' : ''}"
  on:click={()=>{updateScreen(screens.HOME)}}

  >
  
    <img src={pic} alt="svelte logo" class="page-link" width=200 height=32> 
  
</div>
  
  <style>
 
    .page-link {
      cursor: pointer;
      width: "273";
      height: "72";
    }

  </style>