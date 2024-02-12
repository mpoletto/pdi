<template>
  <Vueform v-bind="vueform" />
</template>

<script setup>
import { ref } from 'vue'

const vueform = ref({
    size: 'md',
    displayErrors: false,
    schema: {
      page_title: {
        type: 'static',
        content: 'Monte aqui o seu cardápio. O que está esperando?',
        tag: 'p',
        columns: { container: 10 }
      },
      bebida: {
          type: 'toggle',
          align: 'right',
          columns: {
            container: 2,
          },
          default: false
      },
      container: {
        type: 'group',
        schema: {
          titulo_pedido: {
            type: 'text',
            placeholder: 'Título do pedido',
            columns: {
              container: 5,
              label: 12,
              wrapper: 12,
            },
            fieldName: 'Título do pedido',
            rules: [
              'required',
              'max:255',
            ],
          },
          sabor: {
            type: 'text',
            placeholder: 'Sabor',
            columns: {
              container: 5,
              label: 12,
              wrapper: 12,
            },
            fieldName: 'Sabor',
            rules: [
              'required',
              'max:255',
            ],
          },
          preco: {
            type: 'text',
            placeholder: 'R$',
            columns: {
              container: 2,
              label: 12,
              wrapper: 12,
            },
            fieldName: 'R$',
            rules: [
              'required',
              'max:255',
            ],
          },
        },
        // description: 'Make sure it matches your legal name',
      },
      // birthday: {
      //   type: 'date',
      //   placeholder: 'Birthday',
      //   fieldName: 'Birthday',
      //   rules: [
      //     'required',
      //   ],
      //   description: 'Your birthday is not visible others.',
      //   displayFormat: 'MMMM Do, YYYY',
      // },
      // country: {
      //   type: 'select',
      //   search: true,
      //   native: false,
      //   inputType: 'search',
      //   autocomplete: 'disabled',
      //   placeholder: 'Country',
      //   items: '/json/countries.json',
      // },
      // state: {
      //   type: 'select',
      //   search: true,
      //   native: false,
      //   inputType: 'search',
      //   autocomplete: 'disabled',
      //   placeholder: 'State',
      //   items: '/json/states.json',
      //   conditions: [
      //     [
      //       'country',
      //       'in',
      //       [
      //         'US',
      //       ],
      //     ],
      //   ],
      // },
      descricao: {
        type: 'textarea',
        // inputType: 'tel',
        placeholder: 'Descrição',
        rules: [
          'required',
        ],
        fieldName: 'Descrição',
      },
      img_pedido: {
        type: 'file', 
        title: 'Jogue aqui',
        name: 'imagem', 
        label: 'imagem', 
        accept: 'image/*', 
        view: 'image', 
        rules: [
          'mimetypes:image/jpeg,image/png',
        ],
        drop: true
      },
      divider_1: {
        type: 'static',
        tag: 'hr',
      },
      limpar: {
        type: 'button',
        submits: false,
        buttonLabel: 'Limpar',
        full: false,
        size: 'sm',
        columns: {
          container: 6,
        },
      },
      cadastrar: {
        type: 'button',
        submits: true,
        buttonLabel: 'Cadastrar',
        full: false,
        size: 'sm',
        columns: {
          container: 6,
        },
      },
    },
  })
</script>