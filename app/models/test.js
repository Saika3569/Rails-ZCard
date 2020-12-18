// var status = '😎';

// setTimeout(() => {
//   const status = '😍';

//   const data = {
//     status: '🥑',
//     getStatus() {
//       return this.status;
//     },
//   };

//   console.log(data.getStatus());
//   console.log(data.getStatus.call(this));
// }, 0);


// var status = '😎';

// setTimeout(function(){
//   const status = '😍';

//   const data = {
//     status: '🥑',
//     getStatus() {
//       return this.status;
//     },
//   };

//   console.log(data.getStatus());
//   console.log(data.getStatus.call(this));
// }, 0);


var status = '😎';

setTimeout(function(){
  const status = '😍';

  console.log(this.status)
}, 0);


var status = '😎';

setTimeout(() => {
  const status = '😍';

  console.log(this.status)
}, 0);
