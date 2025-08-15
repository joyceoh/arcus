<template>
  <v-footer>
    <v-btn
        v-for="link in links"
        :key="link"
        :text="link"
        variant="text"
        rounded 
    />
    <div>
      {{ new Date().getFullYear() }} - Arcus
    </div>
  </v-footer>
</template>

<script setup lang="ts">
  const links = [
    {
      name: 'Home',
      link: '/'
    },
    {
      name: 'About Us',
      link: '/aboutus'
    },
    {
      name: 'Team',
      link: '/team'
    },
    {
      name: 'Contact Us',
      link: '/contactus'
    },
  }
</script>
