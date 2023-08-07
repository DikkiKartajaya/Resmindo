<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Selamat datang - pecil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="meja.css">
    <!-- font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lakki Reddy|Joti One|Jua">
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"
        integrity="sha512-fD9DI5bZwQxOi7MhYWnnNPlvXdp/2Pj3XSTRrFs5FQa4mizyGLnJcN6tuvUS6LbmgN1ut+XGSABKvjN0H6Aoow=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
    <!-- animate.css  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

</head>

<body>
    <style>
        .meja {
            width: 180px;
            height: 180px;
            /* box-shadow: 2px 0px 47px 0px rgba(253,154,16,0.75); */
            border: none;
        }

        .meja-penuh {
            /* box-shadow: 2px 0px 47px 0px rgba(177, 13, 13, 0.75); */

        }

        .nomorMeja {
            font-family: jua;
            color: aliceblue;
            font-size: 2em;
        }
    </style>


    <div class="container">



        <h1 class="text-center">Pilih Meja Yang Akan Diisi</h1>
        <div class="row text-center row-meja">
        <p class=""></p>
        			<?php
					$i = 1;
					$sql = mysqli_query($kon, "SELECT * FROM tb_meja");
					while ($data = mysqli_fetch_array($sql)) : ?>
						<?php  
							if ($data['status']==1) {
								$status = "bg-danger meja-penuh";
							} else {
								$status = "tersedia";
							}
						?>
                        <div class="col-4">
                            <button class="rounded meja bg-success nomorMeja mt-4 <?= $status; ?>" id=" <?= $data['meja_id'] ?>">meja<?= $data['meja_id'] ?>
                            </button>
                        </div>

				<?php endwhile; ?>
        </div>
    </div>

    <!--Defining the functionality of jQuery with background color property-->
    <script>

    //     const container = document.querySelector('.row-meja')
    //     let i = 0
    //     for (let i = 1; i <= 10; i++) {
    //     let isi = document.createElement('div')
    //     isi.classList.add('col-4');
    //     isi.innerHTML =`
        
    //             <button class="rounded meja bg-success nomorMeja mt-4" id="meja${i}">meja${i}
    //              </button>
    //     `
    //     container.appendChild(isi)
        
    //     console.log(i);
    //              document.querySelector(`#meja${i}`,).addEventListener("click", () => {
    //                  event.target.classList.toggle("bg-danger")
    //                  event.target.classList.add("meja-penuh")
    //                  if (event.target.innerHTML == "terisi") {
    //                      event.target.innerHTML = `meja${i}`;
    //                  } else {
    //                      event.target.innerHTML = "terisi";
    //                  }
    //              }) 
    // }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

    <!-- fontawesome -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"
        integrity="sha512-fD9DI5bZwQxOi7MhYWnnNPlvXdp/2Pj3XSTRrFs5FQa4mizyGLnJcN6tuvUS6LbmgN1ut+XGSABKvjN0H6Aoow=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>

</html>