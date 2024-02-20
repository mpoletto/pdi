<template>
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
</template>

<script setup>
// import TheHeader from './components/TheHeader.vue'
import '@vueform/vueform/themes/vueform/css/index.css'
import Vueform from './components/forms/MenuForm.vue'

</script>

<style scoped>
.wave img {
  width: 50%;
  height: 50%;
  object-fit: contain;
  /* border: 3px solid blue; */
}
.form-content {
  padding: 1em;
  border-radius: 5px;
  border: 1px solid black;
  box-shadow:
      0 2px 4px 0 rgb(0 0 0 / 20%),
      0 2.5rem 5rem 0 rgb(0 0 0 / 10%);
  float: top;
  position: relative;
  top: -0.3rem;
  background-image: url('./assets/images/ypix.png');
  background-repeat:repeat-x;
  background-size: 5.5rem;
  color: #9e3200;
} 

.form-header {
  background-color: #ffca00;
} 
</style>



