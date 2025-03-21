<template>
  <UApp :locale="zh_cn">
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </UApp>
</template>

<script setup lang="ts">
  import { zh_cn } from '@nuxt/ui/locale'

  // TODO
  useHead({
    title: 'Deep Research Web UI',
    script: [
      // Anonymous analytics
      {
        defer: true,
        src: 'https://umami.ataw.top/script.js',
        'data-website-id': '9f925777-1c4c-440d-94ae-4bfee9e7aa71',
        'data-tag': useRuntimeConfig().public.version,
      },
      {
      innerHTML: `
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          hm.src = "https://hm.baidu.com/hm.js?e15744a2ce60a55d13de44d74c81e586";
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
      `,
      type: 'text/javascript'
    }
    ],
  })
</script>
