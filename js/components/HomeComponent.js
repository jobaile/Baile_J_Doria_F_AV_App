import MoviesComponent from "./MoviesComponent.js"
import MusicComponent from "./MusicComponent.js"
import TvComponent from "./TvComponent.js"
import NavHeaderComponent from "./layout/navComponent.js"

export default {
  props: ['currentUser'],
  template: /*html */`
  <div>
  <NavHeaderComponent @updateMedia="updateMedia"></NavHeaderComponent>
  <MoviesComponent v-if="media == 'movie'"></MoviesComponent>
  <MusicComponent v-if="media == 'music'"></MusicComponent>
  <TvComponent v-if="media == 'tv'"></TvComponent>
 </div>
 `,
  data() {
    return {
      media: 'movie',
      message: "hello from the Users Page",
      usersList: [],
      decade: ""
    };
  },
  components: {
    MoviesComponent: MoviesComponent,
    MusicComponent: MusicComponent,
    TvComponent: TvComponent,
    NavHeaderComponent: NavHeaderComponent
  },
  methods: {
    updateMedia(media) {
      this.media = media;
    },
    updateDecade(decade) {
      this.decade = decade;
    }
  }
};
