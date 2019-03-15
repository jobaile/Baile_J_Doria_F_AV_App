import MoviesComponent from "./MoviesComponent.js"
import MusicComponent from "./MusicComponent.js"
import TvComponent from "./TvComponent.js"
import NavHeaderComponent from "./layout/navComponent.js"
import FooterComponent from "./layout/footerComponent.js"

export default {
  props: ['currentUser'],
  template: /*html */`
  <div>
  <NavHeaderComponent @updateMedia="updateMedia"></NavHeaderComponent>
  <MoviesComponent v-if="media == 'movie'"></MoviesComponent>
  <MusicComponent v-if="media == 'music'"></MusicComponent>
  <TvComponent v-if="media == 'tv'"></TvComponent>
  <FooterComponent></FooterComponent>
 </div>
 `,
  data() {
    return {
      media: 'movie',
      usersList: [],

    };
  },
  components: {
    MoviesComponent: MoviesComponent,
    MusicComponent: MusicComponent,
    TvComponent: TvComponent,
    NavHeaderComponent: NavHeaderComponent,
    FooterComponent: FooterComponent
  },

  methods: {
    updateMedia(media) {
      this.media = media;
    }
  }
};
