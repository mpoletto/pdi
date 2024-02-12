<template>
  <!-- <div> -->
      <header>
      <div class="wave">
        <img src="./assets/images/Logo.svg" class="logo" alt="Logotipo Pastel de Ideias" />
      </div>
    </header>
    <div class="form-content">
      <form class="form">
        <Vueform />
    </form>
    </div>
  <!-- </div> -->
</template>

<script setup>
// import TheHeader from './components/TheHeader.vue'
import '@vueform/vueform/themes/vueform/css/index.css'
import Vueform from './components/forms/MenuForm.vue'

</script>

<style scoped>
.wave img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  /* border: 3px solid blue; */
}
/* .form-content {
  display: flex;
  border-radius: 25%;
  background-color: white;
} */
.form-header {
  background-color: #ffca00;
}
</style>



