use Morph;
use Test::More;

plan(tests => 511);

test_hash('rego+Verb', {
    '+Pres+Ind' => {
        '+1st+Sg+Act' => ['rego'],
        '+2nd+Sg+Act' => ['regis'],
        '+3rd+Sg+Act' => ['regit'],
        '+1st+Pl+Act' => ['regimus'],
        '+2nd+Pl+Act' => ['regitis'],
        '+3rd+Pl+Act' => ['regunt'],
        '+1st+Sg+Pass' => ['regor'],
        '+2nd+Sg+Pass' => ['regeris', 'regere'],
        '+3rd+Sg+Pass' => ['regitur'],
        '+1st+Pl+Pass' => ['regimur'],
        '+2nd+Pl+Pass' => ['regimini'],
        '+3rd+Pl+Pass' => ['reguntur'],
    },
    '+Pres+Subj' => {
        '+1st+Sg+Act' => ['regam'],
        '+2nd+Sg+Act' => ['regas'],
        '+3rd+Sg+Act' => ['regat'],
        '+1st+Pl+Act' => ['regamus'],
        '+2nd+Pl+Act' => ['regatis'],
        '+3rd+Pl+Act' => ['regant'],
        '+1st+Sg+Pass' => ['regar'],
        '+2nd+Sg+Pass' => ['regaris', 'regare'],
        '+3rd+Sg+Pass' => ['regatur'],
        '+1st+Pl+Pass' => ['regamur'],
        '+2nd+Pl+Pass' => ['regamini'],
        '+3rd+Pl+Pass' => ['regantur'],
    },
    '+Impf+Ind' => {
        '+1st+Sg+Act' => ['regebam'],
        '+2nd+Sg+Act' => ['regebas'],
        '+3rd+Sg+Act' => ['regebat'],
        '+1st+Pl+Act' => ['regebamus'],
        '+2nd+Pl+Act' => ['regebatis'],
        '+3rd+Pl+Act' => ['regebant'],
        '+1st+Sg+Pass' => ['regebar'],
        '+2nd+Sg+Pass' => ['regebaris', 'regebare'],
        '+3rd+Sg+Pass' => ['regebatur'],
        '+1st+Pl+Pass' => ['regebamur'],
        '+2nd+Pl+Pass' => ['regebamini'],
        '+3rd+Pl+Pass' => ['regebantur'],
    },
    '+Impf+Subj' => {
        '+1st+Sg+Act' => ['regerem'],
        '+2nd+Sg+Act' => ['regeres'],
        '+3rd+Sg+Act' => ['regeret'],
        '+1st+Pl+Act' => ['regeremus'],
        '+2nd+Pl+Act' => ['regeretis'],
        '+3rd+Pl+Act' => ['regerent'],
        '+1st+Sg+Pass' => ['regerer'],
        '+2nd+Sg+Pass' => ['regereris', 'regerere'],
        '+3rd+Sg+Pass' => ['regeretur'],
        '+1st+Pl+Pass' => ['regeremur'],
        '+2nd+Pl+Pass' => ['regeremini'],
        '+3rd+Pl+Pass' => ['regerentur'],
    },
    '+Fut+Ind' => {
        '+1st+Sg+Act' => ['regam'],
        '+2nd+Sg+Act' => ['reges'],
        '+3rd+Sg+Act' => ['reget'],
        '+1st+Pl+Act' => ['regemus'],
        '+2nd+Pl+Act' => ['regetis'],
        '+3rd+Pl+Act' => ['regent'],
        '+1st+Sg+Pass' => ['regar'],
        '+2nd+Sg+Pass' => ['regeris', 'regere'],
        '+3rd+Sg+Pass' => ['regetur'],
        '+1st+Pl+Pass' => ['regemur'],
        '+2nd+Pl+Pass' => ['regemini'],
        '+3rd+Pl+Pass' => ['regentur'],
    },
    '+Perf+Ind' => {
        '+1st+Sg+Act' => ['rexi'],
        '+2nd+Sg+Act' => ['rexisti'],
        '+3rd+Sg+Act' => ['rexit'],
        '+1st+Pl+Act' => ['reximus'],
        '+2nd+Pl+Act' => ['rexistis'],
        '+3rd+Pl+Act' => ['rexerunt', 'rexere'],
    },
    '+Perf+Subj' => {
        '+1st+Sg+Act' => ['rexerim'],
        '+2nd+Sg+Act' => ['rexeris'],
        '+3rd+Sg+Act' => ['rexerit'],
        '+1st+Pl+Act' => ['rexerimus'],
        '+2nd+Pl+Act' => ['rexeritis'],
        '+3rd+Pl+Act' => ['rexerint'],
    },
    '+Pqp+Ind' => {
        '+1st+Sg+Act' => ['rexeram'],
        '+2nd+Sg+Act' => ['rexeras'],
        '+3rd+Sg+Act' => ['rexerat'],
        '+1st+Pl+Act' => ['rexeramus'],
        '+2nd+Pl+Act' => ['rexeratis'],
        '+3rd+Pl+Act' => ['rexerant'],
    },
    '+Pqp+Subj' => {
        '+1st+Sg+Act' => ['rexissem'],
        '+2nd+Sg+Act' => ['rexisses'],
        '+3rd+Sg+Act' => ['rexisset'],
        '+1st+Pl+Act' => ['rexissemus'],
        '+2nd+Pl+Act' => ['rexissetis'],
        '+3rd+Pl+Act' => ['rexissent'],
    },
    '+FutII+Ind' => {
        '+1st+Sg+Act' => ['rexero'],
        '+2nd+Sg+Act' => ['rexeris'],
        '+3rd+Sg+Act' => ['rexerit'],
        '+1st+Pl+Act' => ['rexerimus'],
        '+2nd+Pl+Act' => ['rexeritis'],
        '+3rd+Pl+Act' => ['rexerint'],
    },
    '+Pres+Impv' => {
        '+2nd+Sg+Act'  => ['rege'],
        '+2nd+Pl+Act'  => ['regite'],
        '+2nd+Sg+Pass' => ['regere'],
        '+2nd+Pl+Pass' => ['regimini'],
    },
    '+Fut+Impv' => {
        '+2nd+Sg+Act' => ['regito'],
        '+3rd+Sg+Act' => ['regito'],
        '+2nd+Pl+Act' => ['regitote'],
        '+3rd+Pl+Act' => ['regunto'],
    },
    '+Inf' => {
        '+Pres+Act' => ['regere'],
        '+Pres+Pass' => ['regi'],
        '+Perf+Act' => ['rexisse'],
    },
    '+Part' => {
        '+Pres' => {
            '+Masc' => {
                '+Nom+Sg' => ['regens'],
                '+Voc+Sg' => ['regens'],
                '+Acc+Sg' => ['regentem'],
                '+Gen+Sg' => ['regentis'],
                '+Dat+Sg' => ['regenti'],
                '+Abl+Sg' => ['regenti', 'regente'],

                '+Nom+Pl' => ['regentes'],
                '+Voc+Pl' => ['regentes'],
                '+Acc+Pl' => ['regentes'],
                '+Gen+Pl' => ['regentium'],
                '+Dat+Pl' => ['regentibus'],
                '+Abl+Pl' => ['regentibus'],
            },
            '+Fem' => {
                '+Nom+Sg' => ['regens'],
                '+Voc+Sg' => ['regens'],
                '+Acc+Sg' => ['regentem'],
                '+Gen+Sg' => ['regentis'],
                '+Dat+Sg' => ['regenti'],
                '+Abl+Sg' => ['regenti', 'regente'],

                '+Nom+Pl' => ['regentes'],
                '+Voc+Pl' => ['regentes'],
                '+Acc+Pl' => ['regentes'],
                '+Gen+Pl' => ['regentium'],
                '+Dat+Pl' => ['regentibus'],
                '+Abl+Pl' => ['regentibus'],
            },
            '+Neut' => {
                '+Nom+Sg' => ['regens'],
                '+Voc+Sg' => ['regens'],
                '+Acc+Sg' => ['regens'],
                '+Gen+Sg' => ['regentis'],
                '+Dat+Sg' => ['regenti'],
                '+Abl+Sg' => ['regenti', 'regente'],

                '+Nom+Pl' => ['regentia'],
                '+Voc+Pl' => ['regentia'],
                '+Acc+Pl' => ['regentia'],
                '+Gen+Pl' => ['regentium'],
                '+Dat+Pl' => ['regentibus'],
                '+Abl+Pl' => ['regentibus'],
            },
        },
        '+Perf' => {
            '+Masc' => {
                '+Nom+Sg' => ['rectus'],
                '+Voc+Sg' => ['recte'],
                '+Acc+Sg' => ['rectum'],
                '+Gen+Sg' => ['recti'],
                '+Dat+Sg' => ['recto'],
                '+Abl+Sg' => ['recto'],

                '+Nom+Pl' => ['recti'],
                '+Voc+Pl' => ['recti'],
                '+Acc+Pl' => ['rectos'],
                '+Gen+Pl' => ['rectorum'],
                '+Dat+Pl' => ['rectis'],
                '+Abl+Pl' => ['rectis'],
            },
            '+Fem' => {
                '+Nom+Sg' => ['recta'],
                '+Voc+Sg' => ['recta'],
                '+Acc+Sg' => ['rectam'],
                '+Gen+Sg' => ['rectae'],
                '+Dat+Sg' => ['rectae'],
                '+Abl+Sg' => ['recta'],

                '+Nom+Pl' => ['rectae'],
                '+Voc+Pl' => ['rectae'],
                '+Acc+Pl' => ['rectas'],
                '+Gen+Pl' => ['rectarum'],
                '+Dat+Pl' => ['rectis'],
                '+Abl+Pl' => ['rectis'],
            },
            '+Neut' => {
                '+Nom+Sg' => ['rectum'],
                '+Voc+Sg' => ['rectum'],
                '+Acc+Sg' => ['rectum'],
                '+Gen+Sg' => ['recti'],
                '+Dat+Sg' => ['recto'],
                '+Abl+Sg' => ['recto'],

                '+Nom+Pl' => ['recta'],
                '+Voc+Pl' => ['recta'],
                '+Acc+Pl' => ['recta'],
                '+Gen+Pl' => ['rectorum'],
                '+Dat+Pl' => ['rectis'],
                '+Abl+Pl' => ['rectis'],
            },
        },
        '+Fut' => {
            '+Masc' => {
                '+Nom+Sg' => ['recturus'],
                '+Voc+Sg' => ['recture'],
                '+Acc+Sg' => ['recturum'],
                '+Gen+Sg' => ['recturi'],
                '+Dat+Sg' => ['recturo'],
                '+Abl+Sg' => ['recturo'],

                '+Nom+Pl' => ['recturi'],
                '+Voc+Pl' => ['recturi'],
                '+Acc+Pl' => ['recturos'],
                '+Gen+Pl' => ['recturorum'],
                '+Dat+Pl' => ['recturis'],
                '+Abl+Pl' => ['recturis'],
            },
            '+Fem' => {
                '+Nom+Sg' => ['rectura'],
                '+Voc+Sg' => ['rectura'],
                '+Acc+Sg' => ['recturam'],
                '+Gen+Sg' => ['recturae'],
                '+Dat+Sg' => ['recturae'],
                '+Abl+Sg' => ['rectura'],

                '+Nom+Pl' => ['recturae'],
                '+Voc+Pl' => ['recturae'],
                '+Acc+Pl' => ['recturas'],
                '+Gen+Pl' => ['recturarum'],
                '+Dat+Pl' => ['recturis'],
                '+Abl+Pl' => ['recturis'],
            },
            '+Neut' => {
                '+Nom+Sg' => ['recturum'],
                '+Voc+Sg' => ['recturum'],
                '+Acc+Sg' => ['recturum'],
                '+Gen+Sg' => ['recturi'],
                '+Dat+Sg' => ['recturo'],
                '+Abl+Sg' => ['recturo'],

                '+Nom+Pl' => ['rectura'],
                '+Voc+Pl' => ['rectura'],
                '+Acc+Pl' => ['rectura'],
                '+Gen+Pl' => ['recturorum'],
                '+Dat+Pl' => ['recturis'],
                '+Abl+Pl' => ['recturis'],
            },
        },
    },
    '+Ger' => {
        '+Acc' => ['regendum'],
        '+Gen' => ['regendi'],
        '+Dat' => ['regendo'],
        '+Abl' => ['regendo'],
    },
    '+Gerv' => {
        '+Masc' => {
            '+Nom+Sg' => ['regendus'],
            '+Voc+Sg' => ['regende'],
            '+Acc+Sg' => ['regendum'],
            '+Gen+Sg' => ['regendi'],
            '+Dat+Sg' => ['regendo'],
            '+Abl+Sg' => ['regendo'],

            '+Nom+Pl' => ['regendi'],
            '+Voc+Pl' => ['regendi'],
            '+Acc+Pl' => ['regendos'],
            '+Gen+Pl' => ['regendorum'],
            '+Dat+Pl' => ['regendis'],
            '+Abl+Pl' => ['regendis'],
        },
        '+Fem' => {
            '+Nom+Sg' => ['regenda'],
            '+Voc+Sg' => ['regenda'],
            '+Acc+Sg' => ['regendam'],
            '+Gen+Sg' => ['regendae'],
            '+Dat+Sg' => ['regendae'],
            '+Abl+Sg' => ['regenda'],

            '+Nom+Pl' => ['regendae'],
            '+Voc+Pl' => ['regendae'],
            '+Acc+Pl' => ['regendas'],
            '+Gen+Pl' => ['regendarum'],
            '+Dat+Pl' => ['regendis'],
            '+Abl+Pl' => ['regendis'],
        },
        '+Neut' => {
            '+Nom+Sg' => ['regendum'],
            '+Voc+Sg' => ['regendum'],
            '+Acc+Sg' => ['regendum'],
            '+Gen+Sg' => ['regendi'],
            '+Dat+Sg' => ['regendo'],
            '+Abl+Sg' => ['regendo'],

            '+Nom+Pl' => ['regenda'],
            '+Voc+Pl' => ['regenda'],
            '+Acc+Pl' => ['regenda'],
            '+Gen+Pl' => ['regendorum'],
            '+Dat+Pl' => ['regendis'],
            '+Abl+Pl' => ['regendis'],
        },
    },
    '+SupI' => ['rectum'],
    '+SupII' => ['rectu'],
});
