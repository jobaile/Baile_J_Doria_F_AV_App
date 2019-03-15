export default {
    props: ['currentuser'],

    template: `
    <div class="container">

        <div class="grid-x" id="vidbox" ref="lbox" v-if="activeInfo">
        <button class="close-button" @click="closebox">
            <span>&times;</span>
        </button>
        
        <div id="lightbox-container">
        </div>

        <div class="image-container">
        </div>

    </div>

    <div id="musicSelect" class="grid-x grid-margin-x">
    <img v-if="activeInfo" v-for="media in retrievedMedia" :src="'images/audio/' + media.audio_cover" alt="media thumb" @click="switchActiveMedia(music)" class="img-thumbnail rounded float-left media-thumb audio-thumb cell small-6 medium-4 large-3">
    </div>

    </div>
    `,

    data() {
        return {
            activeInfo: "music",

            mediaDetails: { 
                source: "",
            },

            retrievedMedia: [],
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "music");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeInfo !== mediaType && mediaType !== null) {
                this.activeInfo= mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = (filter == null) ? `./admin/music.php?music=${this.activeInfo}` : `./admin/music.php?music=${this.mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {         
                    //grabs the media           
                    this.retrievedMedia = data;
                    //grabs the details each
                    this.mediaDetails = data[0];                    
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(music) {
            console.log(music);

            this.mediaDetails = music;
            //opens the lightbox
            this.$refs.lbox.style.display = "block";
        },

          closebox: function() {
              //closes the lightbox
            this.$refs.lbox.style.display = "none";
          }
        }
}