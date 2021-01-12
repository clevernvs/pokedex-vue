<template>
  <div class="pokemon">
    <div class="card">
      <div class="card-image">
        <figure>
          <img :src="currentImg" alt="Placeholder image"/>
        </figure>
      </div>
      <div class="card-content">
        <div class="media">
          <div class="media-content">
            <p class="title is-4"><b>{{ num }}</b> - {{ name | upper }}</p>
            <p class="subtitle is-6">{{ pokemon.type }}</p>
          </div>
        </div>

        <div class="content">
          <button class="button is-small" @click="modifyImg">Virar imagem</button>         
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  created: function () {
    axios.get(this.url).then((res) => {
      this.pokemon.type = res.data.types[0].type.name;
      this.pokemon.imgFront = res.data.sprites.front_default;
      this.pokemon.imgBack = res.data.sprites.back_default;
      this.currentImg = this.pokemon.imgFront;
    });
  },
  data() {
    return {
      isFront: true,
      currentImg:'',
      pokemon: {
        type:'',
        imgFront:'',
        imgBack:'',
      }
    };
  },
  props: {
    num: Number,
    name: String,
    url: String,
  },
  filters: {
    upper: function (value) {
      var upperName = value[0].toUpperCase() + value.slice(1);
      return upperName;
    },
  },
  methods: {
    modifyImg: function(){
      if(this.isFront) {
        this.isFront = false;
        this.currentImg = this.pokemon.imgBack;
      } else {
        this.isFront = true;
        this.currentImg = this.pokemon.imgFront;
      }
    }
  }
};
</script>

<style>
.pokemon {
  margin-top: 2%
}
</style>