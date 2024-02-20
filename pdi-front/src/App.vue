<template>
  <!-- <div> -->
      <header>
      <div class="wave">
        <img src="./assets/images/Logo.svg" class="logo" alt="Logotipo Pastel de Ideias" />
      </div>
    </header>
    <div class="form-content">
      <div>
        <form class="form">
          <Vueform />
        </form>
      </div>
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
.form-content {
  padding: 1em;
  border-radius: 2%;
  background-color: #ffca00;
  background-size: 1em 1em;
  background-repeat: no-repeat;
  box-shadow: 5px 5px gray;
} 
/* .form-header {
  border-radius: 3%;
  background-color: #ffca00;
} */
</style>



