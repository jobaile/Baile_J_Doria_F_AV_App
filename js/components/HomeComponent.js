import MoviesComponent from "./MoviesComponent.js"
import AudioComponent from "./AudioComponent.js"
import TvComponent from "./TvComponent.js"
import NavHeaderComponent from "./layout/NavHeaderComponent.js"
export default {
  props: ['currentUser'],
  template: `
  <div>
  <MoviesComponent></MoviesComponent>
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
    AudioComponent: AudioComponent,
    TvComponent: TvComponent,
    NavHeaderComponent: NavHeaderComponent
  },
  methods: {
    updateMedia(media) {
      this.media = media;
    }
  }
};
