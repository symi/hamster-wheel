<template>
  <div v-if="mobile">
      Welcome to the complains form...
      <button @click="begin">BEGIN!</button>
  </div>
  <div v-else>
    Please scan this QR code to continue...
    <canvas ref="qrcode"></canvas>
  </div>
</template>

<script>
import Vue from 'vue'
import QRCode from 'qrcode'

export default {
    data() {
        return {
            mobile: document.body.clientWidth < 800
        }
    },
    mounted() {
        if (!this.mobile) {
            QRCode.toCanvas(this.$refs.qrcode, 'sample text', function (error) {
                if (error) console.error(error)
                console.log('success!');
            })
        }
    },
    methods: {
        begin() {
            window.location.href = window.location.href + 'who';
        }
    }
}

</script>

<style lang="scss">
$me-size: 20px;
.greeting {
    font-size: $me-size;
}
</style>