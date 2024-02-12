
<template>
    <header>
      <div class="wave">
          <img src="/images/Logo.svg" class="logo" alt="Logotipo Pastel de Ideias" />
      </div>
    </header>
</template>

<script setup>

</script>

<style scoped>
.wave {
  border: 1px solid black;
  width: max-content;
  width: fit-content;
  background-size: contain;
  background-repeat: no-repeat;
  background-image: url('/images/wave.svg');
}
.logo {
  margin: 0 auto;
  /* height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms; */
}
.logo:hover {
  filter: drop-shadow(0 0 2em #ff444d);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>