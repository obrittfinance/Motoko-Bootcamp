<script>
  import { onMount } from "svelte";
  

let count = 0n;

onMount(async () => {
 count = await backend.getCurrentValue();
  
  });

  import { backend } from "../declarations/backend";
</script>

<button>
click: {count}
</button>
