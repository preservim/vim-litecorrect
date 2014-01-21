" ============================================================================
" File:        litecorrect.vim
" Description: autoload functions for vim-litecorrect plugin
" Maintainer:  Reed Esau <github.com/reedes>
" Created:     January 20, 2014
" License:     The MIT License (MIT)
" ============================================================================

scriptencoding utf-8

if exists("autoloaded_litecorrect")
  finish
endif
let autoloaded_litecorrect = 1

function! s:unicode_enabled()
  return &encoding == 'utf-8'
endfunction

function! litecorrect#init(...)
  ia <buffer> TEh The
  ia <buffer> Teh The
  ia <buffer> abotu about
  ia <buffer> acn can
  ia <buffer> adn and
  ia <buffer> agian again
  ia <buffer> ahppen happen
  ia <buffer> ahve have
  ia <buffer> alawys always
  ia <buffer> allready already
  ia <buffer> almots almost
  ia <buffer> almsot almost
  ia <buffer> alomst almost
  ia <buffer> alot a lot
  ia <buffer> alraedy already
  ia <buffer> alreayd already
  ia <buffer> alreday already
  ia <buffer> alwasy always
  ia <buffer> alwats always
  ia <buffer> alway always
  ia <buffer> alwyas always
  ia <buffer> amde made
  ia <buffer> amke make
  ia <buffer> amkes makes
  ia <buffer> andteh and the
  ia <buffer> andthe and the
  ia <buffer> anothe another
  ia <buffer> arond around
  ia <buffer> asthe as the
  ia <buffer> atthe at the
  ia <buffer> awya away
  ia <buffer> aywa away
  ia <buffer> bakc back
  ia <buffer> baout about
  ia <buffer> bcak back
  ia <buffer> beacuse because
  ia <buffer> becasue because
  ia <buffer> becaus because
  ia <buffer> becuase because
  ia <buffer> becuse because
  ia <buffer> befoer before
  ia <buffer> betwen between
  ia <buffer> butthe but the
  ia <buffer> bve be
  ia <buffer> chaneg change
  ia <buffer> chanegs changes
  ia <buffer> chekc check
  ia <buffer> chnage change
  ia <buffer> claer clear
  ia <buffer> claerly clearly
  ia <buffer> cna can
  ia <buffer> comming coming
  ia <buffer> comntain contain
  ia <buffer> comntains contains
  ia <buffer> comtain contain
  ia <buffer> comtains contains
  ia <buffer> coudl could
  ia <buffer> couldthe could the
  ia <buffer> cpoy copy
  ia <buffer> deatils details
  ia <buffer> didnot did not
  ia <buffer> doese does
  ia <buffer> doign doing
  ia <buffer> doimg doing
  ia <buffer> donid doing
  ia <buffer> donig doing
  ia <buffer> efel feel
  ia <buffer> ehr her
  ia <buffer> esle else
  ia <buffer> eyt yet
  ia <buffer> fianlly finally
  ia <buffer> fidn find
  ia <buffer> firts first
  ia <buffer> fo of
  ia <buffer> follwo follow
  ia <buffer> fora for a
  ia <buffer> forthe for the
  ia <buffer> foudn found
  ia <buffer> frmo from
  ia <buffer> fro for
  ia <buffer> fromthe from the
  ia <buffer> fwe few
  ia <buffer> gerat great
  ia <buffer> gievn given
  ia <buffer> goign going
  ia <buffer> gonig going
  ia <buffer> gruop group
  ia <buffer> gruops groups
  ia <buffer> grwo grow
  ia <buffer> hadbeen had been
  ia <buffer> haev have
  ia <buffer> hasbeen has been
  ia <buffer> havebeen have been
  ia <buffer> haveing having
  ia <buffer> hda had
  ia <buffer> hewas he was
  ia <buffer> hge he
  ia <buffer> hlep help
  ia <buffer> hsa has
  ia <buffer> hsi his
  ia <buffer> htat that
  ia <buffer> hte the
  ia <buffer> htere there
  ia <buffer> htese these
  ia <buffer> htey they
  ia <buffer> hting thing
  ia <buffer> htink think
  ia <buffer> htis this
  ia <buffer> hvae have
  ia <buffer> hvaing having
  ia <buffer> hwich which
  ia <buffer> i I
  ia <buffer> idae idea
  ia <buffer> idaes ideas
  ia <buffer> ihs his
  ia <buffer> includ include
  ia <buffer> insted instead
  ia <buffer> inteh in the
  ia <buffer> inthe in the
  ia <buffer> inwhich in which
  ia <buffer> isthe is the
  ia <buffer> itis it is
  ia <buffer> itwas it was
  ia <buffer> iused used
  ia <buffer> iwll will
  ia <buffer> iwth with
  ia <buffer> jsut just
  ia <buffer> knwo know
  ia <buffer> knwon known
  ia <buffer> knwos knows
  ia <buffer> konw know
  ia <buffer> konwn known
  ia <buffer> konws knows
  ia <buffer> lenght length
  ia <buffer> liek like
  ia <buffer> liekd liked
  ia <buffer> liev live
  ia <buffer> likly likely
  ia <buffer> littel little
  ia <buffer> litttle little
  ia <buffer> liuke like
  ia <buffer> loev love
  ia <buffer> lookign looking
  ia <buffer> makeing making
  ia <buffer> mkaes makes
  ia <buffer> mkaing making
  ia <buffer> moeny money
  ia <buffer> mroe more
  ia <buffer> mysefl myself
  ia <buffer> myu my
  ia <buffer> nkow know
  ia <buffer> nothign nothing
  ia <buffer> nver never
  ia <buffer> nwe new
  ia <buffer> nwo now
  ia <buffer> ocur occur
  ia <buffer> ofits of its
  ia <buffer> ofthe of the
  ia <buffer> oging going
  ia <buffer> ohter other
  ia <buffer> omre more
  ia <buffer> oneof one of
  ia <buffer> onthe on the
  ia <buffer> onyl only
  ia <buffer> otehr other
  ia <buffer> otu out
  ia <buffer> outof out of
  ia <buffer> overthe over the
  ia <buffer> owrk work
  ia <buffer> owuld would
  ia <buffer> partof part of
  ia <buffer> peice piece
  ia <buffer> peolpe people
  ia <buffer> peopel people
  ia <buffer> perhasp perhaps
  ia <buffer> perhpas perhaps
  ia <buffer> poeple people
  ia <buffer> pwoer power
  ia <buffer> realyl really
  ia <buffer> reult result
  ia <buffer> reveiw review
  ia <buffer> rwite write
  ia <buffer> saidthat said that
  ia <buffer> saidthe said the
  ia <buffer> seh she
  ia <buffer> shesaid she said
  ia <buffer> shoudl should
  ia <buffer> showinf showing
  ia <buffer> simalar similar
  ia <buffer> similiar similar
  ia <buffer> sitll still
  ia <buffer> smae same
  ia <buffer> smoe some
  ia <buffer> soem some
  ia <buffer> sohw show
  ia <buffer> soical social
  ia <buffer> somethign something
  ia <buffer> someting something
  ia <buffer> somewaht somewhat
  ia <buffer> somthing something
  ia <buffer> somtimes sometimes
  ia <buffer> stnad stand
  ia <buffer> stpo stop
  ia <buffer> tahn than
  ia <buffer> taht that
  ia <buffer> talekd talked
  ia <buffer> talkign talking
  ia <buffer> tath that
  ia <buffer> teh the
  ia <buffer> tehn then
  ia <buffer> tehy they
  ia <buffer> tghe the
  ia <buffer> tghis this
  ia <buffer> thansk thanks
  ia <buffer> thatthe that the
  ia <buffer> thenew the new
  ia <buffer> theri their
  ia <buffer> thesame the same
  ia <buffer> thgat that
  ia <buffer> thge the
  ia <buffer> thier their
  ia <buffer> thigsn things
  ia <buffer> thme them
  ia <buffer> thna than
  ia <buffer> thne then
  ia <buffer> thnig thing
  ia <buffer> thnigs things
  ia <buffer> thsi this
  ia <buffer> thsoe those
  ia <buffer> thta that
  ia <buffer> tihs this
  ia <buffer> timne time
  ia <buffer> tje the
  ia <buffer> tjhe the
  ia <buffer> tkae take
  ia <buffer> tkaes takes
  ia <buffer> tkaing taking
  ia <buffer> ot to
  ia <buffer> todya today
  ia <buffer> tothe to the
  ia <buffer> towrad toward
  ia <buffer> tryed tried
  ia <buffer> tthe the
  ia <buffer> tyhat that
  ia <buffer> tyhe the
  ia <buffer> unliek unlike
  ia <buffer> useing using
  ia <buffer> usualyl usually
  ia <buffer> veyr very
  ia <buffer> vrey very
  ia <buffer> waht what
  ia <buffer> watn want
  ia <buffer> wehn what
  ia <buffer> werre were
  ia <buffer> whcih which
  ia <buffer> wherre where
  ia <buffer> whic which
  ia <buffer> whihc which
  ia <buffer> whta what
  ia <buffer> wihch which
  ia <buffer> wiht with
  ia <buffer> willbe will be
  ia <buffer> witha with a
  ia <buffer> withe with
  ia <buffer> withthe with the
  ia <buffer> wiull will
  ia <buffer> wnat want
  ia <buffer> wnated wanted
  ia <buffer> wnats wants
  ia <buffer> woh who
  ia <buffer> wohle whole
  ia <buffer> wokr work
  ia <buffer> woudl would
  ia <buffer> wouldbe would be
  ia <buffer> writting writing
  ia <buffer> wrod word
  ia <buffer> wroet wrote
  ia <buffer> wtih with
  ia <buffer> wuould would
  ia <buffer> wya way
  ia <buffer> yera year
  ia <buffer> yeras years
  ia <buffer> yersa years
  ia <buffer> yoiu you
  ia <buffer> youare you are
  ia <buffer> ytou you
  ia <buffer> yuo you
  ia <buffer> yuor your

  if s:unicode_enabled()
    ia <buffer> Im I’m
    ia <buffer> couldnt couldn’t
    ia <buffer> didnt didn’t
    ia <buffer> doesnt doesn’t
    ia <buffer> dont don’t
    ia <buffer> hasnt hasn’t
    ia <buffer> shouldnt shouldn’t
    ia <buffer> thats that’s
    ia <buffer> theyll they’ll
    ia <buffer> theyve they’ve
    ia <buffer> wasnt wasn’t
    ia <buffer> wouldnt wouldn’t
    ia <buffer> youve you’ve
  else
    ia <buffer> Im I'm
    ia <buffer> couldnt couldn't
    ia <buffer> didnt didn't
    ia <buffer> doesnt doesn't
    ia <buffer> dont don't
    ia <buffer> hasnt hasn't
    ia <buffer> shouldnt shouldn't
    ia <buffer> thats that's
    ia <buffer> theyll they'll
    ia <buffer> theyve they've
    ia <buffer> wasnt wasn't
    ia <buffer> wouldnt wouldn't
    ia <buffer> youve you've
  endif

  " user overrides
  let l:user_dict = a:0 ? a:1 : {}
  for l:item in items(l:user_dict)
    let l:fixed = l:item[0]
    for l:subitem in l:item[1]
      execute 'ia <buffer> ' . l:subitem . ' ' . l:fixed
    endfor
  endfor
endfunction
