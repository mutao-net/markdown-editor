<template>
  <div class="markdown-editor">
    <no-ssr>
      <mavon-editor
        :toolbars="markdownOption"
        language="ja"
        placeholder=""
        v-model="model"
      />
    </no-ssr>
    <button type="button" @click="onCopy(model)" class="register">Copy</button>
  </div>
</template>

<script>
export default {
  props: {
    model: {
      type: Object | null,
      default: null,
    },
  },
  methods: {
    onCopy(text) {
      this.$copyText(text);
    },
  },
  data() {
    return {
      markdownOption: {
        bold: true,
        italic: true,
        header: true,
        underline: true,
        strikethrough: true,
        mark: true,
        quote: true,
        ol: true,
        ul: true,
        link: true,
        imagelink: true,
        code: true,
        table: true,
        fullscreen: true,
        htmlcode: true,
      },
    };
  },
};
</script>

<style scoped>
.markdown-editor {
  width: 100%;
  height: 100%;
}
</style>