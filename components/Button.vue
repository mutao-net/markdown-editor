<template>
  <button type="button" @click="onCopy(model)" class="register">Copy</button>
</template>
<script>
export default {
  methods: {
    onCopy(text) {
      this.$copyText(text);
    },
  },
};
</script>
<style>
.register {
  background-color: #00a656;
  border-radius: 1.5em;
  box-shadow: 0 0.2em 0.5em rgba(0, 0, 0, 0.2);
  padding: 1em 2em;
  color: #ffffff;
  font-weight: bold;
  text-decoration: none;
  margin: 10px;
  border: none;
  outline: none;
}

button:hover {
  opacity: 0.8;
}

button:active {
  -webkit-transform: translate(0, 2px);
  -moz-transform: translate(0, 2px);
  transform: translate(0, 2px);
  border-bottom: none;
}
</style>
