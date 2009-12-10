ID noun
SUMMARY Noun
INHERENT <noun>
END

ID declension1
GROUP noun
LEMMA puella
PARADIGM <sg><nom>        puella
         <sg><voc>        puella
         <sg><acc>        puellam
         <sg><gen>        puellae
         <sg><dat>        puellae
         <sg><abl>        puella
         <pl><nom>        puellae
         <pl><voc>        puellae
         <pl><acc>        puellas
         <pl><gen>        puellarum
         <pl><dat>        puellis
         <pl><abl>        puellis
END

ID declension1f
GROUP declension1
INHERENT <f>
LEXICON puella, provincia, audacia, controversia, iniuria
LEXICONFILE declension1f.dat
END

ID declension1m
GROUP declension1
INHERENT <m>
LEXICONFILE declension1m.dat
END

ID declension2
GROUP noun
END

ID declension2m
GROUP declension2
INHERENT <m>
LEMMA servus
PARADIGM <sg><nom>        servus
         <sg><voc>        serve
         <sg><acc>        servum
         <sg><gen>        servi
         <sg><dat>        servo
         <sg><abl>        servo
         <pl><nom>        servi
         <pl><voc>        servi
         <pl><acc>        servos
         <pl><gen>        servorum
         <pl><dat>        servis
         <pl><abl>        servis
LEXICONFILE declension2m.dat 
END

ID declension2mi
GROUP declension2
INHERENT <m>
LEMMA filius
PARADIGM <sg><nom>        filius
         <sg><voc>        fili
         <sg><acc>        filium
         <sg><gen>        filii/fili
         <sg><dat>        filio
         <sg><abl>        filio
         <pl><nom>        filii
         <pl><voc>        filii
         <pl><acc>        filios
         <pl><gen>        filiorum
         <pl><dat>        filiis
         <pl><abl>        filiis
LEXICONFILE declension2mi.dat
END

ID declension2n
GROUP declension2
INHERENT <n>
LEMMA bellum
PARADIGM <sg><nom>        bellum
         <sg><voc>        bellum
         <sg><acc>        bellum
         <sg><gen>        belli
         <sg><dat>        bello
         <sg><abl>        bello
         <pl><nom>        bella
         <pl><voc>        bella
         <pl><acc>        bella
         <pl><gen>        bellorum
         <pl><dat>        bellis
         <pl><abl>        bellis
LEXICONFILE declension2n.dat
END

ID declension2ni
GROUP declension2
INHERENT <n>
LEMMA avium
PARADIGM <sg><nom>        avium
         <sg><voc>        avium
         <sg><acc>        avium
         <sg><gen>        avii/avi
         <sg><dat>        avio
         <sg><abl>        avio
         <pl><nom>        avia
         <pl><voc>        avia
         <pl><acc>        avia
         <pl><gen>        aviorum
         <pl><dat>        aviis
         <pl><abl>        aviis
LEXICONFILE declension2ni.dat
END

ID declension4
GROUP noun
SUMMARY Fourth declension
END

ID declension4m
GROUP declension4
SUMMARY Fourth declension, masculines
INHERENT <m>
LEMMA fructus
PARADIGM <sg><nom>        fructus
         <sg><voc>        fructus
         <sg><acc>        fructum
         <sg><gen>        fructus
         <sg><dat>        fructui
         <sg><abl>        fructu
         <pl><nom>        fructus
         <pl><voc>        fructus
         <pl><acc>        fructus
         <pl><gen>        fructuum
         <pl><dat>        fructibus
         <pl><abl>        fructibus
LEXICON fructus, currus, cursus, concursus
LEXICONFILE declension4m.dat
END

ID declension4n
GROUP declension4
SUMMARY Fourth declension, masculines
INHERENT <n>
LEMMA cornu
PARADIGM <sg><nom>        cornu
         <sg><voc>        cornu
         <sg><acc>        cornu
         <sg><gen>        cornus
         <sg><dat>        cornu/cornui
         <sg><abl>        cornu
         <pl><nom>        cornua
         <pl><voc>        cornua
         <pl><acc>        cornua
         <pl><gen>        cornuum
         <pl><dat>        cornuum
         <pl><abl>        cornuum
LEXICON cornu
LEXICONFILE declension4n.dat
END

ID declension3
GROUP noun
END

#TODO: needs sound rules and separation from -um words
ID declension3n-um
GROUP declension3
LEMMA corpor
INHERENT <n>
#PARADIGM <sg><nom>        corpus
#         <sg><voc>        corpus
#         <sg><acc>        corpus
PARADIGM <sg><gen>        corporis
         <sg><dat>        corpori
         <sg><abl>        corpore
         <pl><nom>        corpora
         <pl><voc>        corpora
         <pl><acc>        corpora
         <pl><gen>        corporum
         <pl><dat>        corporibus
         <pl><abl>        corporibus
LEXICONFILE declensionIIIn.dat
END

ID declension3n-ium
GROUP declension3
LEMMA animal
INHERENT <n>
#PARADIGM <sg><nom>        animal
#         <sg><voc>        animal
#         <sg><acc>        animal
PARADIGM <sg><gen>        animalis
         <sg><dat>        animali
         <sg><abl>        animali
         <pl><nom>        animalia
         <pl><voc>        animalia
         <pl><acc>        animalia
         <pl><gen>        animalium
         <pl><dat>        animalibus
         <pl><abl>        animalibus
LEXICON animal
END

# These do all appear to be proper names. TODO: verify
ID declension3m-onis
GROUP declension3
LEMMA Scipio
INHERENT <m>
PARADIGM <sg><nom>        Scipio
         <sg><voc>        Scipio
         <sg><acc>        Scipionem
         <sg><gen>        Scipionis
         <sg><dat>        Scipioni
         <sg><abl>        Scipione
#        <pl><nom>        Scipiones
#        <pl><voc>        Scipiones
#        <pl><acc>        Scipiones
#        <pl><gen>        Scipionum
#        <pl><dat>        Scipionibus
#        <pl><abl>        Scipionibus
LEXICONFILE declension3m-onis.dat
END

ID declension3G
GROUP declension3
LEMMA rex
PARADIGM <sg><nom>        rex
         <sg><voc>        rex
         <sg><acc>        regem
         <sg><gen>        regis
         <sg><dat>        regi
         <sg><abl>        rege
         <pl><nom>        reges
         <pl><voc>        reges
         <pl><acc>        reges
         <pl><gen>        regum
         <pl><dat>        regibus
         <pl><abl>        regibus
END

ID declension3C
GROUP declension3
LEMMA vox
PARADIGM <sg><nom>        vox
         <sg><voc>        vox
         <sg><acc>        vocem
         <sg><gen>        vocis
         <sg><dat>        voci
         <sg><abl>        voce
         <pl><nom>        voces
         <pl><voc>        voces
         <pl><acc>        voces
         <pl><gen>        vocum
         <pl><dat>        vocibus
         <pl><abl>        vocibus
END

ID declension3Cm
GROUP declension3C
LEXICON dux
INHERENT <m>
END

ID declension3Cf
GROUP declension3C
LEXICON vox, dux, radix
INHERENT <f>
END

ID declension3Gm
GROUP declension3G
LEXICON rex
INHERENT <m>
END

ID declensionIIIm-0
GROUP declension3
INHERENT <m>
LEMMA consul
PARADIGM <sg><nom>        consul
         <sg><voc>        consul
         <sg><acc>        consulem
         <sg><gen>        consulis
         <sg><dat>        consuli
         <sg><abl>        consule
         <pl><nom>        consules
         <pl><voc>        consules
         <pl><acc>        consules
         <pl><gen>        consulum
         <pl><dat>        consulibus
         <pl><abl>        consulibus
LEXICONFILE declensionIIIm-0.dat
END

ID declensionIII-t
GROUP declension3
LEMMA pons
PARADIGM <sg><nom>        pons
         <sg><voc>        pons
         <sg><acc>        pontem
         <sg><gen>        pontis
         <sg><dat>        ponti
         <sg><abl>        ponte
         <pl><nom>        pontes
         <pl><voc>        pontes
         <pl><acc>        pontes
         <pl><gen>        pontum
         <pl><dat>        pontibus
         <pl><abl>        pontibus
END

ID declensionIIIm-t
GROUP declensionIII-t
INHERENT <m>
LEXICONFILE declensionIIIm-t.dat
END

ID declensionIIIm-t
GROUP declensionIII-t
INHERENT <f>
LEXICONFILE declensionIIIf-t.dat
END

ID declension3IO
GROUP declension3
INHERENT <f>
LEMMA regio
PARADIGM <sg><nom>        regio
         <sg><voc>        regio
         <sg><acc>        regionem
         <sg><gen>        regionis
         <sg><dat>        regioni
         <sg><abl>        regione
         <pl><nom>        regiones
         <pl><voc>        regiones
         <pl><acc>        regiones
         <pl><gen>        regionum
         <pl><dat>        regionibus
         <pl><abl>        regionibus
LEXICON regio, largitio, intercessio, actio, desperatio, abdicatio, aberratio, abjectio, ablactatio, ablaqueatio, ablutio, abnegatio, abolitio, abominatio, abrogatio, abruptio, abscessio, abscissio, absolutio, abusio, accessio, accubitio, accuratio, accusatio, actio, adactio, adagnitio, adhortatio, adinventio, adjectio, administratio, admiratio, admissio, admonitio, adoptio, adulatio, adustio, advectio, advocatio, aedificatio, aegrotatio, aemulatio, aequatio, aestimatio, affectatio, affectio, affirmatio, afflictatio, afflictio, aggeratio, agnatio, agnitio, agricolatio, alienatio, allegatio, allevatio, allocutio, alluvio, altercatio, ambitio, ambulatio, amissio, amplificatio, animadversio, annotatio, anquisitio, apertio, appellatio, applicatio, appositio, approbatio, apricatio, aquatio, aratio, argumentatio, ascensio, aspernatio, aspersio, aspiratio, assectatio, assensio, assentatio, asseveratio, assignatio, assumptio, attentio, attributio, auctio, auditio, aversatio, aversio, benedictio, cantatio, cantio, captio, castigatio, catulitio, causatio, cautio, cavillatio, celebratio, cenatio, censio, certatio, cessatio, cessio, circinatio, circuitio, circumcisio, circumscriptio, circumsessio, circumspectio, circumvectio, circumventio, clarigatio, coacervatio, coagulatio, coemptio, coercitio, cogitatio, cognatio, cognitio, cohortatio, coinquinatio, coitio, collatio, collectio, collisio, collocatio, collocutio, collusio, comissatio, commemoratio, commendatio, commentatio, comminatio, commissio, commixtio, commonitio, commoratio, commotio, communicatio, communitio, commutatio, compactio, compellatio, compensatio, compilatio, comploratio, compositio, compotatio, concenatio, conceptio, concertatio, concessio, conciliatio, concisio, concitatio, conclamatio, conclusio, concoctio, concretio, conculcatio, concussio, condemnatio, condicio, condictio, conduplicatio, conexio, confarreatio, confessio, confictio, confirmatio, conflictio, conformatio, confusio, congestio, congregatio, congressio, conjectatio, conjectio, conjugatio, conjunctio, conjuratio, conquestio, conscriptio, consecratio, consectatio, consectio, consecutio, consensio, conservatio, consideratio, consolatio, consortio, conspiratio, consternatio, constitutio, constructio, consultatio, consummatio, consumptio, contabulatio, contagio, contaminatio, contemplatio, contemptio, contentio, contestatio, contignatio, continuatio, contio, contradictio, contributio, contritio, conturbatio, conventio, conversatio, conversio, cooptatio, copulatio, correctio, correptio, corrogatio, coruscatio, creatio, cretio, criminatio, cultio, cunctatio, curatio, damnatio, datio, debilitatio, deceptio, decessio, decimatio, decisio, declamatio, declaratio, declinatio, decursio, dedicatio, deditio, deductio, defatigatio, defectio, defensio, definitio, deflagratio, defunctio, dejectio, delatio, delectatio, delegatio, deliberatio, deliquio, deliratio, demersio, demigratio, deminutio, demolitio, demonstratio, dentitio, denuntiatio, depopulatio, depositio, depraedatio, deprecatio, depulsio, derelictio, derivatio, derogatio, descriptio, desertio, designatio, desolatio, despectio, desperatio, destillatio, destinatio, destitutio, destructio, detentio, detractio, devoratio, devotio, dicio, dictio, digestio, dignatio, digressio, dilatio, dilectio, dimicatio, diminutio, dimissio, dinumeratio, directio, diremptio, direptio, disceptatio, discessio, discretio, discriptio, disjunctio, dispensatio, dispersio, dispertitio, dispositio, disputatio, disquisitio, dissensio, dissimulatio, dissipatio, dissolutio, dissuasio, distentio, distinctio, distractio, distributio, districtio, disturbatio, ditio, divinatio, divisio, divitatio, dominatio, donatio, dormitatio, dormitio, dubitatio, ductio, duplicatio, edictio, editio, educatio, effusio, egestio, egressio, ejectio, elatio, electio, elevatio, elocutio, emancipatio, emendatio, emptio, emundatio, enumeratio, enuntiatio, epulatio, eradicatio, erectio, ereptio, erratio, eruditio, erugatio, eruptio, escensio, evasio, eversio, evictio, evocatio, exactio, exaequatio, exaggeratio, exceptio, excessio, excidio, excisio, excitatio, exclamatio, excogitatio, excusatio, exercitatio, exhortatio, existimatio, exornatio, exosculatio, expeditio, expiatio, explanatio, expletio, explicatio, exploratio, expolitio, expositio, expostulatio, expressio, exprobratio, expugnatio, expurgatio, exscensio, exsecratio, exsecutio, exsolutio, exspectatio, exspuitio, exstinctio, extentio, exulceratio, exustio, fabricatio, factio, factitatio, faeneratio, fatigatio, festinatio, fidejussio, figuratio, finitio, flexio, fluctuatio, fomentatio, formatio, fossio, fractio, fraudatio, fricatio, frictio, frustratio, functio, fundatio, generatio, germinatio, gestatio, gratificatio, gratulatio, gubernatio, habitatio, haesitatio, harenatio, horripilatio, hortatio, humatio, humiliatio, ignoratio, illuminatio, illusio, imaginatio, imitatio, imminutio, immissio, immolatio, immutatio, impetratio, implicatio, imploratio, impositio, imprecatio, impressio, improbatio, impugnatio, inauguratio, incensio, inceptio, incitatio, inclinatio, inconsideratio, incorruptio, increpatio, incursio, incusatio, indicatio, indictio, indignatio, ineruditio, infestatio, inflammatio, inflatio, inflexio, influxio, infrictio, ingressio, inhibitio, inhonoratio, injectio, inoculatio, inquisitio, inscriptio, insectatio, insimulatio, insinuatio, insitio, insolatio, inspectio, inspiratio, instauratio, institutio, instructio, insultatio, intentatio, intentio, intercessio, interdictio, interfatio, interfectio, interitio, interjectio, intermissio, internecio, interpellatio, interpretatio, interrogatio, interruptio, intersectio, interspiratio, interturbatio, inundatio, inventio, invitatio, invocatio, involutio, irio, irrisio, irritatio, irruptio, iteratio, itio, jactatio, jocatio, jubilatio, judicatio, jugatio, jurisdictio, jussio, justificatio, labefactatio, lacrimatio, laesio, lamentatio, lapidatio, lapsio, largitio, latio, laudatio, lavatio, laxatio, lectio, legatio, legio, levatio, liberatio, libratio, licitatio, lignatio, linitio, litatio, locatio, locupletatio, locutio, loricatio, lucratio, luctatio, lucubratio, ludificatio, lusio, lustratio, maceratio, machinatio, maledictio, mancipatio, mansio, manumissio, meditatio, mellatio, memoratio, messio, metitio, migratio, ministratio, minutio, miratio, miseratio, missio, mitigatio, moderatio, modulatio, monstratio, mortificatio, motio, multiplicatio, munitio, murmuratio, mutatio, mutilatio, narratio, natio, navigatio, negatio, negotiatio, nodatio, nomenclatio, nominatio, notio, nuncupatio, nundinatio, nuntiatio, nutricatio, obductio, objectio, objurgatio, oblatio, oblectatio, obligatio, oblivio, oboeditio, obreptio, obsecratio, obsecutio, observatio, obsessio, obsidio, obstinatio, obtestatio, obtrectatio, occasio, occidio, occisio, occultatio, occupatio, offensio, ominatio, operatio, opinatio, opinio, opitulatio, oppositio, oppressio, oppugnatio, oratio, ordinatio, originatio, ornatio, oscillatio, oscitatio, osculatio, ostensio, ostentatio, ovatio, pacificatio, pacio, pactio, palpitatio, parentatio, participatio, partitio, passio, pastinatio, pastio, pensio, perceptio, percursatio, percursio, perditio, perduellio, peregrinatio, perfectio, permotio, permutatio, peroratio, perpotatio, perrogatio, perscriptio, persecutio, perseveratio, persuasio, perturbatio, pigneratio, piscatio, placatio, plantatio, plasmatio, ploratio, politio, pollicitatio, pollutio, portio, positio, possessio, postilio, postulatio, potatio, praebitio, praeceptio, praecinctio, praecipitatio, praecisio, praecogitatio, praedicatio, praedictio, praefatio, praefinitio, praelatio, praelectio, praelocutio, praemeditatio, praenotio, praeparatio, praepositio, praescriptio, praestatio, praesumptio, praevaricatio, precatio, prehensio, prensio, probatio, procreatio, procuratio, procursatio, productio, profanatio, profectio, professio, profusio, progressio, prohibitio, prolatio, promissio, promotio, promulgatio, pronuntiatio, propagatio, propensio, properatio, propinatio, propitiatio, proportio, propositio, propugnatio, proscriptio, prosecutio, prostitutio, protectio, protestatio, provisio, provocatio, publicatio, pumilio, punctio, punitio, purgatio, purificatio, putatio, quadratio, quaesitio, quaestio, questio, ratio, ratiocinatio, rebellatio, recensio, recessio, reciprocatio, recitatio, recognitio, reconciliatio, recordatio, recusatio, redargutio, redditio, redemptio, redhibitio, reditio, refectio, refrenatio, refrigeratio, refutatio, regeneratio, regio, rejectio, relatio, relegatio, relevatio, relictio, religio, remansio, rememoratio, remigatio, remissio, remuneratio, renovatio, renuntiatio, reparatio, repetitio, reprehensio, repromissio, repulsio, reputatio, requietio, resolutio, respiratio, responsio, restauratio, restipulatio, restitutio, resumptio, resurrectio, retentio, retributio, revelatio, reversio, revocatio, rogatio, rogitatio, rotatio, rotundatio, rusticatio, sacratio, sacrificatio, saltatio, salutatio, sanatio, sanctificatio, sanctio, satisfactio, scansio, scriptio, secessio, sectio, secutio, seditio, seductio, separatio, sepositio, sessio, sideratio, significatio, simulatio, solidatio, solutio, sorbitio, sortitio, sparsio, spectio, speculatio, spiratio, spoliatio, sponsio, statio, stercoratio, stipulatio, strangulatio, structio, subauditio, subductio, subjectio, subsannatio, subscriptio, subsignatio, subsortitio, substructio, subtractio, subvectio, subversio, successio, sudatio, suffitio, suffocatio, suffragatio, suffusio, suggestio, sugillatio, sumministratio, summissio, superfusio, superlatio, superscriptio, superstitio, supplantatio, supplicatio, supplosio, suppositio, suppuratio, supputatio, surrectio, surreptio, susceptio, suspensio, sustentatio, tabulatio, talio, taxatio, temperatio, tergiversatio, terminatio, tertiatio, testatio, testificatio, tractatio, traditio, traductio, trajectio, transfiguratio, transgressio, transitio, translatio, transmigratio, transmissio, transvectio, tribulatio, trullissatio, tuitio, turbatio, ultio, unctio, usio, usurpatio, vacatio, vaporatio, vastatio, vaticinatio, velitatio, venatio, venditio, veneratio, verberatio, vermiculatio, vernatio, versatio, versificatio, vexatio, vilicatio, vindicatio, violatio, visceratio, visio, visitatio, vituperatio, vocatio, vociferatio, vomitio, vulneratio, vulsio
END

ID adjective
INHERENT <adjective>
END

ID declension12i
GROUP adjective
INHERENT <positive>
LEMMA dubius
PARADIGM <sg><nom><m>     dubius
         <sg><voc><m>     dubi
         <sg><acc><m>     dubium
         <sg><gen><m>     dubii/dubi
         <sg><dat><m>     dubio
         <sg><abl><m>     dubio
         <pl><nom><m>     dubii
         <pl><voc><m>     dubii
         <pl><acc><m>     dubios
         <pl><gen><m>     dubiorum
         <pl><dat><m>     dubiis
         <pl><abl><m>     dubiis
         <sg><nom><f>     dubia
         <sg><voc><f>     dubia
         <sg><acc><f>     dubiam
         <sg><gen><f>     dubiae
         <sg><dat><f>     dubiae
         <sg><abl><f>     dubia
         <pl><nom><f>     dubiae
         <pl><voc><f>     dubiae
         <pl><acc><f>     dubias
         <pl><gen><f>     dubiarum
         <pl><dat><f>     dubiis
         <pl><abl><f>     dubiis
         <sg><nom><n>     dubium
         <sg><voc><n>     dubium
         <sg><acc><n>     dubium
         <sg><gen><n>     dubii
         <sg><dat><n>     dubio
         <sg><abl><n>     dubio
         <pl><nom><n>     dubia
         <pl><voc><n>     dubia
         <pl><acc><n>     dubia
         <pl><gen><n>     dubiorum
         <pl><dat><n>     dubiis
         <pl><abl><n>     dubiis
LEXICONFILE declension12i.dat
END

ID declensionIII-er
INHERENT <adjective><positive>
LEMMA acer
PARADIGM <sg><nom><m>     acer
         <sg><voc><m>     acer
         <sg><nom><f>     acris
         <sg><voc><f>     acris
         <sg><acc><m/f>   acrem
         <sg><gen><m/f>   acris
         <sg><dat><m/f>   acri
         <sg><abl><m/f>   acri
         <pl><nom><m/f>   acres
         <pl><voc><m/f>   acres
         <pl><acc><m/f>   acres
         <pl><gen><m/f>   acrium
         <pl><dat><m/f>   acribus
         <pl><abl><m/f>   acribus
         <sg><nom><n>     acre
         <sg><voc><n>     acre
         <sg><acc><n>     acre
         <sg><gen><n>     acris
         <sg><dat><n>     acri
         <sg><abl><n>     acri
         <pl><nom><n>     acria
         <pl><voc><n>     acria
         <pl><acc><n>     acria
         <pl><gen><n>     acrium
         <pl><dat><n>     acribus
         <pl><abl><n>     acribus
LEXICONFILE declensionIII-er.dat
END

ID declensionII-is
INHERENT <adjective><positive>
LEMMA stabilis
PARADIGM <sg><nom><m/f>   stabilis
         <sg><voc><m/f>   stabilis
         <sg><acc><m/f>   stabilem
         <sg><gen><m/f>   stabilis
         <sg><dat><m/f>   stabili
         <sg><abl><m/f>   stabili
         <pl><nom><m/f>   stabiles
         <pl><voc><m/f>   stabiles
         <pl><acc><m/f>   stabiles
         <pl><gen><m/f>   stabilium
         <pl><dat><m/f>   stabilibus
         <pl><abl><m/f>   stabilibus
         <sg><nom><n>     stabile
         <sg><voc><n>     stabile
         <sg><acc><n>     stabile
         <sg><gen><n>     stabilis
         <sg><dat><n>     stabili
         <sg><abl><n>     stabili
         <pl><nom><n>     stabilia
         <pl><voc><n>     stabilia
         <pl><acc><n>     stabilia
         <pl><gen><n>     stabilium
         <pl><dat><n>     stabilibus
         <pl><abl><n>     stabilibus
LEXICONFILE declensionII-is.dat
END

ID declensionI-ns
INHERENT <adjective><positive>
LEMMA prudens
PARADIGM <sg><nom><m/f>   prudens
         <sg><voc><m/f>   prudens
         <sg><acc><m/f>   prudentem
         <sg><gen><m/f>   prudentis
         <sg><dat><m/f>   prudenti
         <sg><abl><m/f>   prudenti
         <pl><nom><m/f>   prudentes
         <pl><voc><m/f>   prudentes
         <pl><acc><m/f>   prudentes
         <pl><gen><m/f>   prudentium
         <pl><dat><m/f>   prudentibus
         <pl><abl><m/f>   prudentibus
         <sg><nom><n>     prudens
         <sg><voc><n>     prudens
         <sg><acc><n>     prudens
         <sg><gen><n>     prudentis
         <sg><dat><n>     prudenti
         <sg><abl><n>     prudenti
         <pl><nom><n>     prudentia
         <pl><voc><n>     prudentia
         <pl><acc><n>     prudentia
         <pl><gen><n>     prudentium
         <pl><dat><n>     prudentibus
         <pl><abl><n>     prudentibus
LEXICONFILE declensionI-ns.dat
END

# Templates
ID adjectival-12
LEMMA Xus
PARADIGM <sg><nom><m>     Xus
         <sg><voc><m>     Xe
         <sg><acc><m>     Xum
         <sg><gen><m>     Xi
         <sg><dat><m>     Xo
         <sg><abl><m>     Xo
         <pl><nom><m>     Xi
         <pl><voc><m>     Xi
         <pl><acc><m>     Xos
         <pl><gen><m>     Xorum
         <pl><dat><m>     Xis
         <pl><abl><m>     Xis
         <sg><nom><f>     Xa
         <sg><voc><f>     Xa
         <sg><acc><f>     Xam
         <sg><gen><f>     Xae
         <sg><dat><f>     Xae
         <sg><abl><f>     Xa
         <pl><nom><f>     Xae
         <pl><voc><f>     Xae
         <pl><acc><f>     Xas
         <pl><gen><f>     Xarum
         <pl><dat><f>     Xis
         <pl><abl><f>     Xis
         <sg><nom><n>     Xum
         <sg><voc><n>     Xum
         <sg><acc><n>     Xum
         <sg><gen><n>     Xi
         <sg><dat><n>     Xo
         <sg><abl><n>     Xo
         <pl><nom><n>     Xa
         <pl><voc><n>     Xa
         <pl><acc><n>     Xa
         <pl><gen><n>     Xorum
         <pl><dat><n>     Xis
         <pl><abl><n>     Xis
END

# Paradigms
ID declension12
SUMMARY Positives in -us, -a, -um
GROUP adjectival-12
INHERENT <adjective><positive>
LEXICONFILE declension12.dat
END

ID superlatives
SUMMARY Superlatives in -us, -a, -um
GROUP adjectival-12
INHERENT <adjective><superlative>
LEXICONFILE superlatives.dat
END

ID comparatives
SUMMARY Comparatives in -ior, -ius
INHERENT <adjective><comparative>
LEMMA Xior
PARADIGM <sg><nom><m/f>   Xior
         <sg><voc><m/f>   Xior
         <sg><acc><m/f>   Xiorem
         <sg><gen><m/f>   Xioris
         <sg><dat><m/f>   Xiori
         <sg><abl><m/f>   Xiore
         <pl><nom><m/f>   Xiores
         <pl><voc><m/f>   Xiores
         <pl><acc><m/f>   Xiores
         <pl><gen><m/f>   Xiorum
         <pl><dat><m/f>   Xioribus
         <pl><abl><m/f>   Xioribus
         <sg><nom><n>     Xius
         <sg><voc><n>     Xius
         <sg><acc><n>     Xius
         <sg><gen><n>     Xioris
         <sg><dat><n>     Xiori
         <sg><abl><n>     Xiore
         <pl><nom><n>     Xiora
         <pl><voc><n>     Xiora
         <pl><acc><n>     Xiora
         <pl><gen><n>     Xiorum
         <pl><dat><n>     Xioribus
         <pl><abl><n>     Xioribus
LEXICONFILE comparatives.dat
END

ID perfect-participles
SUMMARY Perfect participles
GROUP adjectival-12
INHERENT <verb><participle><perfect><passive>
DERIVATION us
LEXICONFILE supines.dat
END

ID future-participles
SUMMARY Future participles
GROUP adjectival-12
INHERENT <verb><participle><future><active>
DERIVATION urus
LEXICONFILE supines.dat
END

ID supines
SUMMARY Supines
INHERENT <verb><supine>
LEMMA Xus
PARADIGM <acc>                                Xum
         <abl>                                Xu
DERIVATION us
LEXICONFILE supines.dat
END

ID gerunds
SUMMARY Gerunds
INHERENT <verb><gerund>
LEMMA amandus
PARADIGM <acc>                            amandum
         <gen>                            amandi
         <dat>                            amando
         <abl>                            amando
END

ID gerunds1
SUMMARY Gerunds of conjugation 1
GROUP gerunds
DERIVATION andus
LEXICONFILE conjugation1stemmed.dat, conjugation1-dep.dat
END

ID gerunds23
SUMMARY Gerunds of conjugation 2 and 3
GROUP gerunds
DERIVATION endus
LEXICONFILE conjugation2stemmed.dat, conjugation2-dep.dat, conjugation3stemmed.dat, conjugation3-dep.dat
END

ID gerunds3u
SUMMARY Gerunds of 3
GROUP gerunds
DERIVATION undus
LEXICONFILE conjugation3stemmed.dat, conjugation3-dep.dat
END

ID gerunds3i4
SUMMARY Gerunds of conjugation 3i and 4
GROUP gerunds
DERIVATION iendus
LEXICONFILE conjugation3istemmed.dat, conjugation3i-dep.dat, conjugation4stemmed.dat, conjugation4-dep.dat
END

ID gerunds3i4u
SUMMARY Gerunds of conjugation 3i and 4
GROUP gerunds
DERIVATION iundus
LEXICONFILE conjugation3istemmed.dat, conjugation3i-dep.dat, conjugation4stemmed.dat, conjugation4-dep.dat
END

ID gerundives
SUMMARY Gerundives
GROUP adjectival-12
INHERENT <verb><gerundive>
END

ID gerundives1
SUMMARY Gerundives of conjugation 1
GROUP gerundives
DERIVATION andus
LEXICONFILE conjugation1stemmed.dat, conjugation1-dep.dat
END

ID gerundives23
SUMMARY Gerundives of conjugation 2 and 3
GROUP gerundives
DERIVATION endus
LEXICONFILE conjugation2stemmed.dat, conjugation2-dep.dat, conjugation3stemmed.dat, conjugation3-dep.dat
END

ID gerundives3u
SUMMARY Gerundives of conjugation 3
GROUP gerundives
DERIVATION undus
LEXICONFILE conjugation3stemmed.dat, conjugation3-dep.dat
END

ID gerundives3i4
SUMMARY Gerundives of conjugation 3i and 4
GROUP gerundives
DERIVATION iendus
LEXICONFILE conjugation3istemmed.dat, conjugation3i-dep.dat, conjugation4stemmed.dat, conjugation4-dep.dat
END

ID gerundives3i4u
SUMMARY Gerundives of conjugation 3i and 4
GROUP gerundives
DERIVATION iundus
LEXICONFILE conjugation3istemmed.dat, conjugation3i-dep.dat, conjugation4stemmed.dat, conjugation4-dep.dat
END

ID present-participles
INHERENT <verb><participle><present><active>
LEMMA Xns
PARADIGM <sg><nom><m/f>   Xns
         <sg><voc><m/f>   Xns
         <sg><acc><m/f>   Xntem
         <sg><gen><m/f>   Xntis
         <sg><dat><m/f>   Xnti
         <sg><abl><m/f>   Xnte
         <pl><nom><m/f>   Xntes
         <pl><voc><m/f>   Xntes
         <pl><acc><m/f>   Xntes
         <pl><gen><m/f>   Xntium
         <pl><dat><m/f>   Xntibus
         <pl><abl><m/f>   Xntibus
         <sg><nom><n>     Xns
         <sg><voc><n>     Xns
         <sg><acc><n>     Xns
         <sg><gen><n>     Xntis
         <sg><dat><n>     Xnti
         <sg><abl><n>     Xnti
         <pl><nom><n>     Xntia
         <pl><voc><n>     Xntia
         <pl><acc><n>     Xntia
         <pl><gen><n>     Xntium
         <pl><dat><n>     Xntibus
         <pl><abl><n>     Xntibus
END

ID present-participle1
SUMMARY Present participles of conjugation 1
GROUP present-participles
DERIVATION ans
LEXICONFILE conjugation1stemmed.dat, conjugation1-dep.dat
END

ID present-participle2
SUMMARY Present participles of conjugation 2
GROUP present-participles
DERIVATION ens
LEXICONFILE conjugation2stemmed.dat, conjugation2-dep.dat
END

ID present-participle3
SUMMARY Present participles of conjugation 3
GROUP present-participles
DERIVATION ens
LEXICONFILE conjugation3stemmed.dat, conjugation3-dep.dat
END

ID present-participle3i
SUMMARY Present participles of conjugation 3i
GROUP present-participles
DERIVATION iens
LEXICONFILE conjugation3istemmed.dat, conjugation3i-dep.dat
END

ID present-participle4
SUMMARY Present participles of conjugation 4
GROUP present-participles
DERIVATION iens
LEXICONFILE conjugation4stemmed.dat, conjugation4-dep.dat
END
