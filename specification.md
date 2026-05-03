# Back From The Dead Fest

## Stručná identita festivalu

- **Název festivalu:** Back From The Dead Fest
- **Ročník:** 1
- **Lokalita:** Letiště Milovice, Česká republika
- **Datumový rozsah:** 17. 07. 2026 – 19. 07. 2026

Back From The Dead Fest je fiktivní třídenní hudební festival zaměřený na revival a tribute vystoupení interpretů, kteří již nežijí, nebo známých kapel, které mají mrtvé členy a často na ně vznikají revival projekty. Program je postavený na třech hlavních žánrech: **pop, rap a rock**.

Festival tedy neobsahuje jen sólové umělce, ale i známé skupiny. Díky tomu je datová základna pestřejší a lépe odpovídá tématu revival festivalu.

## Cílové publikum a charakter akce

Festival je určen hlavně pro:

- studenty a mladé návštěvníky festivalů
- fanoušky známých hudebních legend
- posluchače popu, rapu a rocku
- návštěvníky ve věku přibližně 18–40 let

Akce má neformální festivalový charakter. Program je rozdělený do více scén a kombinuje hlavní večerní vystoupení s odpoledními koncerty. Celkový styl festivalu je moderní, ale zároveň postavený na nostalgii a připomenutí známých interpretů a kapel.

## Struktura webu

Web festivalu bude obsahovat minimálně tyto sekce:

### 1. Úvod
- základní představení festivalu
- termín a místo konání
- hlavní myšlenka festivalu
- vybraná jména z programu

### 2. Program
- seznam vystoupení podle dnů
- čas a místo konání jednotlivých akcí
- návaznost na konkrétní interprety nebo kapely

### 3. Účinkující
- seznam všech interpretů zařazených do festivalové databáze
- rozdělení podle žánrů
- rozlišení mezi sólovými umělci a kapelami

### 4. Místa / Praktické informace
- přehled festivalových scén
- základní informace o areálu
- orientace návštěvníků v prostoru akce

## Datová základna v XML

Soubor `festival.xml` obsahuje kompletní výchozí datovou základnu festivalu. XML je vytvořené jako well-formed dokument a obsahuje tyto hlavní entity:

- `festival`
- `venues`
- `performers`
- `events`

V XML jsou mezi entitami použité odkazy přes ID, takže jednotlivé programové položky odkazují na konkrétního interpreta a konkrétní místo konání. U performerů je navíc rozlišené, jestli jde o **artist** nebo **band**.

## Splnění požadavků zadání

Datová základna splňuje minimální požadavky:

- **3 dny festivalu**
- **3 místa konání**
- **60 účinkujících**
- **60 programových položek**
- **well-formed XML**

Doplňkově databáze obsahuje mix:
- **30 sólových interpretů**
- **30 kapel**
