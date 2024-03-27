<template>
  <div id="app">
    <div class="column is-half is-offset-one-quarter">

      <div class="card">
        <div class="card-image">
          <figure class="image media-center is-128x128">
            <img src="./assets/pokemon-logo.png" alt="Pokemon logo" />
          </figure>

        </div>
        <div class="card-content">
          <h4 class="is-size-4">Pokedex</h4>
        </div>
      </div>

      <div class="card">
        <div class="card-content">
          <div class="level">
            <div class="level-item">
              <input class="input is-rounded" type="text" placeholder="Buscar pokemon" v-model="searchPokemon" />
            </div>
            <div class="level-item">
              <button class="button is-primary is-rounded" @click="search">
                Buscar
              </button>
            </div>
          </div>
        </div>
      </div>

      <div v-for="(poke, index) in filteredPokemons" :key="poke.url">
        <Pokemon :num="index + 1" :name="poke.name" :url="poke.url" />
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
// import Pokemon from "./components/Pokemon";
import Pokemon from './components/Pokemon.vue';

export default {
  name: "App",
  data() {
    return {
      pokemons: [],
      filteredPokemons: [],
      searchPokemon: "",
    };
  },
  created: function () {
    axios
      .get("https://pokeapi.co/api/v2/pokemon?limit=151&offset=0")
      .then((res) => {
        console.log(res.data.results);
        this.pokemons = res.data.results;
        this.filteredPokemons = res.data.results;
      });
  },
  components: {
    Pokemon
  },
  methods: {
    search: function () {
      this.filteredPokemons = this.pokemons;
      if (this.searchPokemon == "" || this.searchPokemon == " ") {
        this.filteredPokemons = this.pokemons;
      } else {
        this.filteredPokemons = this.pokemons.filter(
          (pokemon) => pokemon.name == this.searchPokemon
        );
      }
    },
  },
  computed: {
    // resultSearch: function () {
    //   if(this.searchPokemon == '' || this.searchPokemon == ' '){
    //     return this.pokemons;
    //   } else {
    //     this.pokemons.filter(pokemon => pokemon.name == this.searchPokemon);
    //   }
    // }
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
