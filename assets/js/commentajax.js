

$(document).ready(function(){
    $('#form_comments').submit(function(e){
        e.preventDefault();
        var form = $('#form_comments')[0];
        var dataform = new FormData(form);
        let id_abonnee=$('#id_abonnee').val()
        let comment_message=$('#comment_message').val()
        let idArticle=$('#idArticle').val()
        console.log({id_abonnee:id_abonnee,comment_message:comment_message,idArticle:idArticle})

        $.ajax('front/comments.php?idArticle='+idArticle,{
            method:'POST',
            data:{id_abonnee:id_abonnee,comment_message:comment_message,idArticle:idArticle},
            dataType:"HTML",
            success:function(data){
                console.log(data)
                $('#contenu_comment').html(data)
            },
            error:function(error)
            {
                console.log(error)
            }
        })
      
    })


let messageErreurInscription=$('#messageErreurInscription').val()
if(messageErreurInscription!=="")
{
    var myModal = new bootstrap.Modal(document.getElementById('modalInscription'))
    myModal.show()
    $('#msgErrorInscription').html(messageErreurInscription)
    $('#msgErrorInscription').toggleClass('d-none')


   
}



////////////Script aimer//////////////////////
$('.btnAimer').click(function(){
    let id_abonnee=$(this).attr('data-user')
    let id_article=$(this).attr('data-article')

   $.ajax('front/aimerAjax.php',{
            method:'POST',
            data:{id_abonnee:id_abonnee,idArticle:id_article},
            dataType:"json",
            success:function(data){
                console.log(data)
                console.log(data.nbrAimes.nbrAimes)
                $('#totaleAimes').html(data.nbrAimes.nbrAimes)
            },
            error:function(error)
            {
                console.log(error)
            }
        })
})

})