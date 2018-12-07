(()=> {
  const vm = new Vue({
      el: '#app',

      data: {
          welcomemessage : "Roku Flashback",
          
          videodata : [], //this gets the array
          singledata : [],

          videotitle : "",
          videodescription : "",
          videsources : "",

          showDetails : false
      },

      created : function(){
          //get all of the movie data on page load
          this.fetchMovieData(null);
      },

      methods : {
          login() {
              //stub
              console.log('login functionality');
          },

          fetchSingle(e) {
              //debugger;
              this.fetchMovieData(e.currentTarget.dataset.movie);
          },

          loadMovie(e) {
              //debugger;
              e.preventDefault(); // block a page reload (anchor tag default behaviour

              dataKey = e.currentTarget.getAttribute('href');
              currentData = this.videodata.filter(tbl_movie => tbl_movie.url === dataKey);

              this.videotitle = currentData[0].title;
              this.videodescription = currentData[0].description;
              this.videosource = dataKey;

              this.showDetails = true;

              setTimeout(function(){ window.scrollTo(0, 1200)}, 500)
          },

          fetchMovieData(movie) {
              //this is a ternary statement (shorthand for if/else). left of the : is true, right is false
              let url = movie ? `./includes/index.php?movie=${movie}` : './includes/index.php';

              fetch(url) // pass in the one or many query
              .then(res => res.json())
              .then(data => {
                  console.log(data);

                  if (movie) {
                      // getting one movie, so use the single array
                      this.singledata = data; //this is gonna go to the data
                  } else {
                      // push all the video  into the video array
                      this.videodata = data;
                  }
              })
              .catch(function(error) {
                  console.log(error);
              });
          }
      }
  });
})();