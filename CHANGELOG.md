<!-- markdownlint-disable MD012 MD024 -->
# # Bedrock Connect Docker Image Change Log 📜📝
All notable changes to the **Bedrock Connect** Docker Image, published on Docker Hub will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.3.1](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.3.0...2.3.1) (2024-06-27)

### 🐛 Bug Fixes

* **dockerfile:** fix issue with healthcheck ([7984cc3](https://git.strausmann.de/minecraft/bedrock-connect/commit/7984cc37e8695c25328c981684f1de39e98ba04e))

## [2.3.0](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.15...2.3.0) (2024-06-27)

### ✨ Features

* **bedrock-entry.sh:** Adding new BDC variables ([91e232a](https://git.strausmann.de/minecraft/bedrock-connect/commit/91e232a3335b3c0c3889e8978b85b30e2097faf5)), closes [#27](https://git.strausmann.de/minecraft/bedrock-connect/issues/27)
* **renovate:** Manage itzg/* dependencies by renovate ([e1b2255](https://git.strausmann.de/minecraft/bedrock-connect/commit/e1b225518db37568bb75d7206af8abedea93bf17)), closes [#28](https://git.strausmann.de/minecraft/bedrock-connect/issues/28)

### ♻️ Chores

* **deps:** update dependency inquirer to v9.3.0 ([80fc5b2](https://git.strausmann.de/minecraft/bedrock-connect/commit/80fc5b22ead3b4dec73075e80cc73263fc50eb79))
* **deps:** update dependency prettier to v3.3.1 ([d669807](https://git.strausmann.de/minecraft/bedrock-connect/commit/d669807ebee1fa4c1532d1ca92bf613d278d4aa2))
* **deps:** update dependency prettier to v3.3.2 ([17ae9dc](https://git.strausmann.de/minecraft/bedrock-connect/commit/17ae9dcd3784f3dd28c41c185a85df9c59931e56))
* **deps:** update docker docker tag to v26 ([b9f840c](https://git.strausmann.de/minecraft/bedrock-connect/commit/b9f840c79433ae6e8c867a16a0b1c336358661c8))
* **deps:** update docker docker tag to v26.1.4 ([293d323](https://git.strausmann.de/minecraft/bedrock-connect/commit/293d323bdf04e03d776f52497560b69038c513e6))
* **deps:** update docker docker tag to v27 ([3251992](https://git.strausmann.de/minecraft/bedrock-connect/commit/32519922eeaed9885d3467d765d531304da750ef))
* **deps:** update openjdk:23-ea-jdk-slim-bookworm docker digest to 3b841dd ([9a23554](https://git.strausmann.de/minecraft/bedrock-connect/commit/9a2355441d0f772a31b8a2f7379aafd46c5009df))
* **deps:** update openjdk:23-ea-jdk-slim-bookworm docker digest to 4467ee3 ([705e1b6](https://git.strausmann.de/minecraft/bedrock-connect/commit/705e1b6510ad9fcff6e38ca9fddab0e93daa4e72))
* **deps:** update openjdk:23-ea-jdk-slim-bookworm docker digest to c688e6b ([cc61fbd](https://git.strausmann.de/minecraft/bedrock-connect/commit/cc61fbdfa712140f76cb6e17223914105b75d201))
* **deps:** update openjdk:23-ea-jdk-slim-bookworm docker digest to c6a75cc ([d7d01e3](https://git.strausmann.de/minecraft/bedrock-connect/commit/d7d01e34eb91da0693fb9391e4f87d3fdef68cfa))
* **deps:** update openjdk:23-ea-jdk-slim-bookworm docker digest to db5535f ([dae9e27](https://git.strausmann.de/minecraft/bedrock-connect/commit/dae9e27196616cd78160835bc4211250b1daf23b))
* **semantic releases:** Update the semantic releases dependencies ([8c3e389](https://git.strausmann.de/minecraft/bedrock-connect/commit/8c3e3892e8a2646f0d52af7a05963bb157145efb))
* **typo:** fix some typos ([2125474](https://git.strausmann.de/minecraft/bedrock-connect/commit/212547478e6a015bee7b5c6bf59787a852321859))
* **typos:** Fix markdown tables ([b14ff36](https://git.strausmann.de/minecraft/bedrock-connect/commit/b14ff36b0376a35bd3bb77803812a1cb5c892908))
* **typos:** Fix markdown tables ([037accc](https://git.strausmann.de/minecraft/bedrock-connect/commit/037acccabbb1e2ad41f84d9a3371357669a45321))

### 🛠 Build

* **megalinter:** Configure megalinter to gitlab ci ([e3be483](https://git.strausmann.de/minecraft/bedrock-connect/commit/e3be48381d1539ea7f18a6d17b0cd14be8e34f56))
* **megalinter:** Configure megalinter to gitlab ci ([1355e1c](https://git.strausmann.de/minecraft/bedrock-connect/commit/1355e1cef03b18bacb8ae76bb1100f63f4d92f6a)), closes [#12](https://git.strausmann.de/minecraft/bedrock-connect/issues/12)
* **megalinter:** Ignore Hadolint DS005 ([e4c4a2b](https://git.strausmann.de/minecraft/bedrock-connect/commit/e4c4a2b57e695864ba3b82b1948a17d10e5610a3))
* **megalinter:** Update megalinter to gitlab ci ([63082a8](https://git.strausmann.de/minecraft/bedrock-connect/commit/63082a8bdc211c3304a5ae0ec81ad12f7e336b9a))
* **megalinter:** Update megalinter to gitlab ci ([47cd638](https://git.strausmann.de/minecraft/bedrock-connect/commit/47cd63879ff9360ab81b6d15c5ebf103f5033bbc))
* **megalinter:** Update megalinter to gitlab ci ([8199f61](https://git.strausmann.de/minecraft/bedrock-connect/commit/8199f614dfa98bbe7c7258a211f7dd49193cbb0f))
* **megalinter:** Update megalinter to gitlab ci ([21e839d](https://git.strausmann.de/minecraft/bedrock-connect/commit/21e839dab948c7552388a3c3e5f39e8b173ffb20))
* **megalinter:** Update megalinter to gitlab ci ([573363c](https://git.strausmann.de/minecraft/bedrock-connect/commit/573363c8bfe338016bae267357cc86ed5c89500c))
* **megalinter:** Update megalinter to gitlab ci ([dedd261](https://git.strausmann.de/minecraft/bedrock-connect/commit/dedd261a5261083e79b2b0490e463f29a3b6ab5a))
* **megalinter:** Update megalinter to gitlab ci ([aa405dc](https://git.strausmann.de/minecraft/bedrock-connect/commit/aa405dcc768f89ae7c32fb831a60962082af137b))
* **megalinter:** Update megalinter to gitlab ci ([85c699d](https://git.strausmann.de/minecraft/bedrock-connect/commit/85c699df864188c2e53716b29510e5db1e57c385))
* **megalinter:** Update megalinter to gitlab ci ([8a7ec04](https://git.strausmann.de/minecraft/bedrock-connect/commit/8a7ec0419eeef98f2b11612488ddbcc160d733ba))
* **megalinter:** Update megalinter to gitlab ci ([24d9270](https://git.strausmann.de/minecraft/bedrock-connect/commit/24d927021ecaf7ccfa82485ea2546301fc3a6abf))
* **megalinter:** Update megalinter to gitlab ci ([75103e8](https://git.strausmann.de/minecraft/bedrock-connect/commit/75103e8df2b92f95a849a82e70d80e3ee0b145c9))
* **megalinter:** Update megalinter to gitlab ci ([58934f1](https://git.strausmann.de/minecraft/bedrock-connect/commit/58934f18602ba0d7d3ff816cb24d48af4a8cff5d))
* **megalinter:** Update megalinter to gitlab ci ([828edb4](https://git.strausmann.de/minecraft/bedrock-connect/commit/828edb4c9abbb488c1df92fc9e5d412821687776))

### 🦊 CI/CD

* **gitlab pipeline:** cleanup gitlab pipeline code ([b790d23](https://git.strausmann.de/minecraft/bedrock-connect/commit/b790d2357a632081538e8ea1384c9afcea172e6f))
* **gitlab pipeline:** cleanup gitlab pipeline code ([fa15275](https://git.strausmann.de/minecraft/bedrock-connect/commit/fa15275243f264944549d647c645b595f667bf41))

## [2.2.15](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.14...2.2.15) (2024-06-04)

### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.8.1 ([07dce7b](https://git.strausmann.de/minecraft/bedrock-connect/commit/07dce7b363fad8266c08a8c52ee5978f301c1daa))

### ♻️ Chores

* **deps:** update commitlint monorepo to v19 ([6f520be](https://git.strausmann.de/minecraft/bedrock-connect/commit/6f520be12c6798bc9fe235a99e4cb18f3818fdfa))
* **deps:** update dependency @commitlint/config-conventional to v18.6.3 ([04f38d2](https://git.strausmann.de/minecraft/bedrock-connect/commit/04f38d22e220a52aaab7432c462705816f163a16))
* **deps:** update dependency semantic-release to v24 ([cdfb4e1](https://git.strausmann.de/minecraft/bedrock-connect/commit/cdfb4e1e21d14e0118a6dbced0813a1854a91c38))
* **deps:** update devdependencies ([4524e8c](https://git.strausmann.de/minecraft/bedrock-connect/commit/4524e8c55ad2074bf03cd1c68a5aba47f9abf4be))
* **deps:** update devdependencies (non-major) ([85ea840](https://git.strausmann.de/minecraft/bedrock-connect/commit/85ea84075b4d0fbeb1f8125afcf6a5221d3cbaf6))
* **deps:** update node.js to 4b23206 ([0478e20](https://git.strausmann.de/minecraft/bedrock-connect/commit/0478e20ab8a62d7dd36d19efb366d2418dc64d0e))
* **deps:** update node.js to b9ccc4a ([e6bc2a6](https://git.strausmann.de/minecraft/bedrock-connect/commit/e6bc2a658575fc883b17af1e12dde9b6ff79a4dc))
* **deps:** update node.js to v21.7.0 ([4b104f0](https://git.strausmann.de/minecraft/bedrock-connect/commit/4b104f02a96258ab6ec0cb6196102fa57219b244))
* **deps:** update node.js to v21.7.1 ([9c1e5ea](https://git.strausmann.de/minecraft/bedrock-connect/commit/9c1e5ea9e266d523d625ad2850f6226aefa9dbaa))
* **deps:** update node.js to v21.7.3 ([374c7e7](https://git.strausmann.de/minecraft/bedrock-connect/commit/374c7e7e28797754661a60cca8f99d53cd04e9e5))
* **deps:** update openjdk:23-ea-jdk-slim-bookworm docker digest to 2e8c5d5 ([766d179](https://git.strausmann.de/minecraft/bedrock-connect/commit/766d179a4c34888325a087310c8f87e34bfc6ab5))
* **deps:** update openjdk:23-ea-jdk-slim-bookworm docker digest to cbaf544 ([23b3a93](https://git.strausmann.de/minecraft/bedrock-connect/commit/23b3a933de482cae92ee05152bf5ea2dab263c7d))
* **dockerfile:** Update Dependencies ([b873788](https://git.strausmann.de/minecraft/bedrock-connect/commit/b873788b7cd623235b101b57b59cb52f70df687e))

### 🦊 CI/CD

* **template:** Remove Security/License-Scanning ([d7a499d](https://git.strausmann.de/minecraft/bedrock-connect/commit/d7a499d87f5acc0cbf5850b3196733e6174dec8a))

## [2.2.14](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.13...2.2.14) (2024-2-29)


### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.5.0 ([aa4e53b](https://git.strausmann.de/minecraft/bedrock-connect/commit/aa4e53b0433ac1aa7f1cbf7316982991150f943d))

## [2.2.13](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.12...2.2.13) (2024-2-27)


### 🐛 Bug Fixes

* **deps:** Update some dependencies ([7591f34](https://git.strausmann.de/minecraft/bedrock-connect/commit/7591f34280b0e18af0f73e54bbf94726a95d4801))


### ♻️ Chores

* **deps:** update dependency @semantic-release/gitlab to v13.0.3 ([5e9e921](https://git.strausmann.de/minecraft/bedrock-connect/commit/5e9e921789c960a643c5c367ec2aab4af23190f6))
* **deps:** update dependency husky to v9 ([7bfa0cd](https://git.strausmann.de/minecraft/bedrock-connect/commit/7bfa0cd31bf4915f56a61dc9febd88be4d4fdcfc))
* **deps:** update devdependencies (non-major) ([f092bad](https://git.strausmann.de/minecraft/bedrock-connect/commit/f092badd6aefb329c8b73dc0ee573633a77154c9))
* **deps:** update docker docker tag to v25 ([e4f2c60](https://git.strausmann.de/minecraft/bedrock-connect/commit/e4f2c603dc1d6c0a52e5376d791fb47dac666616))
* **deps:** update node.js to 5951e42 ([f79eb14](https://git.strausmann.de/minecraft/bedrock-connect/commit/f79eb14c250267100d2b1f0fb74e97a663fce8d9))
* **deps:** update node.js to 65998e3 ([655bded](https://git.strausmann.de/minecraft/bedrock-connect/commit/655bded80a7ced6167990792afa6ebb2dcb45e80))
* **deps:** update node.js to v21.6.2 ([4497413](https://git.strausmann.de/minecraft/bedrock-connect/commit/44974138842aba5b647b24fdd740c9c3f145d6bd))

## [2.2.12](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.11...2.2.12) (2024-2-8)


### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.4.0 ([4001705](https://git.strausmann.de/minecraft/bedrock-connect/commit/40017057ae0fcd2a2dcb2c6f865f7644f56bb350))


### ♻️ Chores

* **deps:** update dependency prettier to v3.2.1 ([217d454](https://git.strausmann.de/minecraft/bedrock-connect/commit/217d454ad94c2c76730f1ff06ea643493fb8e2a9))
* **deps:** update dependency prettier to v3.2.2 ([099838c](https://git.strausmann.de/minecraft/bedrock-connect/commit/099838ca11fa8320ef00d1acafbb9dc4b3321dec))
* **deps:** update dependency prettier to v3.2.4 ([094ee39](https://git.strausmann.de/minecraft/bedrock-connect/commit/094ee394b6839ff4d27457ae848874e94b779d91))
* **deps:** update dependency semantic-release to v23 ([4e1e189](https://git.strausmann.de/minecraft/bedrock-connect/commit/4e1e1890a1ec59fa06b15ffacf6970e26934891c))
* **deps:** update dependency semantic-release to v23.0.1 ([c51ee81](https://git.strausmann.de/minecraft/bedrock-connect/commit/c51ee8169326910fb80a7569728fa928b20279f6))
* **deps:** update dependency semantic-release to v23.0.2 ([712a8ab](https://git.strausmann.de/minecraft/bedrock-connect/commit/712a8abd1e20281aac3d407432c35eb219dabb17))
* **deps:** update devdependencies (non-major) ([846bc93](https://git.strausmann.de/minecraft/bedrock-connect/commit/846bc938d4c90fe749cb52be9c7c2f3382a3b900))
* **deps:** update docker docker tag to v24.0.9 ([ee2c770](https://git.strausmann.de/minecraft/bedrock-connect/commit/ee2c7700d108722b1ad8b624fd3cafbee240bf99))
* **deps:** update node.js to 0ded287 ([aff52db](https://git.strausmann.de/minecraft/bedrock-connect/commit/aff52db012c2b18bb8f2e1fff1953ce71e5b57f3))
* **deps:** update node.js to ca1e0e5 ([2a85cb7](https://git.strausmann.de/minecraft/bedrock-connect/commit/2a85cb7cd6f519f39c9bddeedee278b024cee069))
* **deps:** update node.js to v21.6.0 ([cece67a](https://git.strausmann.de/minecraft/bedrock-connect/commit/cece67ac0254e1d2ac3e97352dd8c9576e0a1c4f))
* **deps:** update node.js to v21.6.1 ([ee1d239](https://git.strausmann.de/minecraft/bedrock-connect/commit/ee1d239beec0aa58f26c982df553407b86bb9ddc))

## [2.2.11](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.10...2.2.11) (2024-1-11)


### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.3.0 ([0698b14](https://git.strausmann.de/minecraft/bedrock-connect/commit/0698b14291f7ab6eb6995b3668495c54566c5594))


### ♻️ Chores

* **deps:** update dependency @semantic-release/gitlab to v13.0.2 ([db50610](https://git.strausmann.de/minecraft/bedrock-connect/commit/db50610dec2d7ca2a6b119a646173e3c206fdbbd))
* **deps:** update devdependencies (non-major) to v18.4.4 ([d0456e8](https://git.strausmann.de/minecraft/bedrock-connect/commit/d0456e85dad390b1ba5f009a6f95aa95229dcdaf))

## [2.2.10](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.9...2.2.10) (2024-1-3)


### 🐛 Bug Fixes

* **docker:** Fix Image Labels are empty ([c532f99](https://git.strausmann.de/minecraft/bedrock-connect/commit/c532f99a7b3d33ff06b2127ee62f4c783d41936e)), closes [#26](https://git.strausmann.de/minecraft/bedrock-connect/issues/26)


### ♻️ Chores

* **make:** Fix Makefile Syntax (Default) ([9834aec](https://git.strausmann.de/minecraft/bedrock-connect/commit/9834aec952b1617235318d05f207cb53d158e1f7))

## [2.2.9](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.8...2.2.9) (2024-1-1)


### 🐛 Bug Fixes

* **deps:** Update dependencies ([c090cb4](https://git.strausmann.de/minecraft/bedrock-connect/commit/c090cb4c54e1e8e17a6d8ef7b8f80b3d6767ad84))
* **deps:** update dependency ([0074f5a](https://git.strausmann.de/minecraft/bedrock-connect/commit/0074f5aa7cfd484b5a47f1bfb097d15ad2b72510))


### ♻️ Chores

* **build:** reduce docker layer size ([b5b25c7](https://git.strausmann.de/minecraft/bedrock-connect/commit/b5b25c7e19ca2004a2db5486237f61111a470dd8))
* **deps:** update dev dependencies ([1384a68](https://git.strausmann.de/minecraft/bedrock-connect/commit/1384a68c10f1b0211f898a68482d74421a1a480e))


### 🦊 CI/CD

* **renovate:** Add vulnerabilityAlerts ([8c74b54](https://git.strausmann.de/minecraft/bedrock-connect/commit/8c74b54d9eb59bf14afaa8f44df265001aea1d30))

## [2.2.8](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.7...2.2.8) (2023-12-28)


### 🐛 Bug Fixes

* **bug:** sha tag removed, amd64 image was tagged ([82b139e](https://git.strausmann.de/minecraft/bedrock-connect/commit/82b139e1431298c31957848b063c259a85daca5c))
* **bug:** sha tag removed, amd64 image was tagged ([6ffa9d1](https://git.strausmann.de/minecraft/bedrock-connect/commit/6ffa9d17cf68c372496e477117034c53a5196cec))


### ♻️ Chores

* **deps:** update dependency @semantic-release/gitlab to v13 ([a35c173](https://git.strausmann.de/minecraft/bedrock-connect/commit/a35c17326728109f78294bd690b713d568747918))
* **deps:** update dependency prettier to v3.1.1 ([c7f4e4f](https://git.strausmann.de/minecraft/bedrock-connect/commit/c7f4e4f889ba44740fdb0e2e0802151c180596b4))
* **deps:** update dependency semantic-release to v22.0.11 ([4f51e07](https://git.strausmann.de/minecraft/bedrock-connect/commit/4f51e07307a515d5ee5be33f72ce1283b6b62824))
* **deps:** update dependency semantic-release to v22.0.12 ([c993a2b](https://git.strausmann.de/minecraft/bedrock-connect/commit/c993a2b9159ad968d6f1a3fb1d8840ee89b98e05))
* **deps:** update node.js to 814a6dc ([f45ac46](https://git.strausmann.de/minecraft/bedrock-connect/commit/f45ac46472be04467f22a2740ceabbf811f1c439))
* **deps:** update node.js to v21.4.0 ([022771d](https://git.strausmann.de/minecraft/bedrock-connect/commit/022771dd61e91ec49fd41df6134dfde4671cd19f))
* **deps:** update node.js to v21.5.0 ([e245cc9](https://git.strausmann.de/minecraft/bedrock-connect/commit/e245cc90318c22f0cc71b3100659bb5b9757baf5))
* **deps:** update openjdk:22-ea-jdk-slim-bookworm docker digest to 37867f6 ([779d617](https://git.strausmann.de/minecraft/bedrock-connect/commit/779d6174f9e921054e61856bac1e5a97ad4c79da))
* **deps:** update openjdk:22-ea-jdk-slim-bookworm docker digest to 85266d7 ([0e40003](https://git.strausmann.de/minecraft/bedrock-connect/commit/0e4000321e86e5c0b6b040700db78ec60c9eeab0))
* **deps:** update openjdk:22-ea-jdk-slim-bookworm docker digest to d47b9b5 ([91ab410](https://git.strausmann.de/minecraft/bedrock-connect/commit/91ab41066975b2048106a3f310361d02f3e7fac6))

## [2.2.7](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.6...2.2.7) (2023-12-7)


### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.2.5 ([d38dead](https://git.strausmann.de/minecraft/bedrock-connect/commit/d38dead65d0c9fbc6d373c2c505718d525b216e7))


### ♻️ Chores

* **deps:** update dependency semantic-release to v22.0.10 ([d576ff5](https://git.strausmann.de/minecraft/bedrock-connect/commit/d576ff5e8320787ff56de8e0455f1886180e32f0))
* **deps:** update dependency semantic-release to v22.0.9 ([a556f96](https://git.strausmann.de/minecraft/bedrock-connect/commit/a556f962e507c7b0aeb622b1d709761a554a14b7))
* **deps:** update node.js to v21.3.0 ([bf57ea9](https://git.strausmann.de/minecraft/bedrock-connect/commit/bf57ea9a09e779749ef014294ff052ca1ca295e3))
* **deps:** update openjdk:22-ea-jdk-slim-bookworm docker digest to 1f44e50 ([cf75811](https://git.strausmann.de/minecraft/bedrock-connect/commit/cf758117471ec3a00acf7af5ba44c6d238dca5ac))
* **deps:** update openjdk:22-ea-jdk-slim-bookworm docker digest to a218eb0 ([e88d19e](https://git.strausmann.de/minecraft/bedrock-connect/commit/e88d19e2426ecbeaff1ccccdccd118cdfc690dba))

## [2.2.6](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.5...2.2.6) (2023-11-27)


### 🐛 Bug Fixes

* **deps:** Update dependency entrypoint-demoter to v0.4.2 ([0967241](https://git.strausmann.de/minecraft/bedrock-connect/commit/0967241f97de058c5a95843e7afd2519e985bdec))

## [2.2.5](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.4...2.2.5) (2023-11-27)


### 🐛 Bug Fixes

* **deps:** update dependencies mc-monitor and easy-add ([8ecec65](https://git.strausmann.de/minecraft/bedrock-connect/commit/8ecec65691942a40d603fcc18616a940e5cda069))

## [2.2.4](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.3...2.2.4) (2023-11-23)


### 🐛 Bug Fixes

* **deps:** update dependency mc-monitor to v0.12.5 ([b20be9c](https://git.strausmann.de/minecraft/bedrock-connect/commit/b20be9c5cf3b9e8a347636d8aa3c8a53ad5018b7))


### ♻️ Chores

* **deps:** update devdependencies (non-major) ([7417155](https://git.strausmann.de/minecraft/bedrock-connect/commit/741715542196a1c94257fb0898d2a997cdd281a7))
* **deps:** update devdependencies (non-major) to v18.4.2 ([6eb5196](https://git.strausmann.de/minecraft/bedrock-connect/commit/6eb519608502b38dbabcc64396969940d388f722))
* **deps:** update devdependencies (non-major) to v18.4.3 ([be5cf7e](https://git.strausmann.de/minecraft/bedrock-connect/commit/be5cf7e9e111a1e3c4cbea934e10e360da8589c5))
* **deps:** update node.js to 657d653 ([6dc478f](https://git.strausmann.de/minecraft/bedrock-connect/commit/6dc478fbc77787a0fa3963a3354c3bc09b8a3a2d))
* **deps:** update node.js to 84bb407 ([4733ab1](https://git.strausmann.de/minecraft/bedrock-connect/commit/4733ab16586000d5852e283ba1c34afffbb1b3a1))
* **deps:** update node.js to v21.2.0 ([ffe5f47](https://git.strausmann.de/minecraft/bedrock-connect/commit/ffe5f47df4585b8cf1969db0d54f2b5470ec02a2))

## [2.2.3](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.2...2.2.3) (2023-11-16)


### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.2.4 ([ae3497e](https://git.strausmann.de/minecraft/bedrock-connect/commit/ae3497e5ff172d6f142f53e1c44a4d278137b4b4))


### ♻️ Chores

* **deps:** update dependency @semantic-release/gitlab to v12.1.0 ([d5c5175](https://git.strausmann.de/minecraft/bedrock-connect/commit/d5c517559e643d996cbc88dbdd016f515a08efb4))
* **deps:** update dependency conventional-changelog-conventionalcommits to v7 ([69fe0a9](https://git.strausmann.de/minecraft/bedrock-connect/commit/69fe0a9ca76cb80ab41560c55fecb69c1bd539b1))
* **deps:** update dependency prettier to v3 ([f703a1e](https://git.strausmann.de/minecraft/bedrock-connect/commit/f703a1eebcf432bb8de00c495542507a0118e991))
* **deps:** update dependency prettier to v3.1.0 ([66d5c6d](https://git.strausmann.de/minecraft/bedrock-connect/commit/66d5c6dfaeaa0e5b729f9fa47118904eac90f539))
* **deps:** update devdependencies (non-major) to v18.4.0 ([270502a](https://git.strausmann.de/minecraft/bedrock-connect/commit/270502a1ed56f83fecc2f03d9a15b1c20d3c8f45))
* **deps:** update devdependencies (non-major) to v18.4.1 ([d70b1e1](https://git.strausmann.de/minecraft/bedrock-connect/commit/d70b1e1082780d2606abdc9a99b4420a452ffeb0))
* **deps:** update semantic-release monorepo ([4ddfccf](https://git.strausmann.de/minecraft/bedrock-connect/commit/4ddfccfcfb61446ac724140397e2d0d4e5813a95))

## [2.2.2](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.1...2.2.2) (2023-11-05)


### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.2.3 ([074c24d](https://git.strausmann.de/minecraft/bedrock-connect/commit/074c24d71b6f240f51f18e8bb70a74a244f124a4))


### ♻️ Chores

* **deps:** update commitlint monorepo to v18 ([03cf938](https://git.strausmann.de/minecraft/bedrock-connect/commit/03cf938e6c97e03170c0a0988823ebcd9f8b5e85))
* **deps:** update devdependencies (non-major) ([30f3966](https://git.strausmann.de/minecraft/bedrock-connect/commit/30f3966a823b0f260608260641d659ba323a9378))
* **deps:** update node.js to 0052410 ([a9bec58](https://git.strausmann.de/minecraft/bedrock-connect/commit/a9bec5841790b536faab8160aedcb0b01221aec0))

## [2.2.1](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.0...2.2.1) (2023-11-03)


### ♻️ Chores

* **release:** 1.0.0 ([ad6990f](https://git.strausmann.de/minecraft/bedrock-connect/commit/ad6990fd19b87b32e10b31cd09439d6b91b01fad))


### 🦊 CI/CD

* **build:** CI Trigger Latest Release wird nur noch mit einem neuen Release erstellt ([00a99ee](https://git.strausmann.de/minecraft/bedrock-connect/commit/00a99ee853e954f0ce1ab37c9a82c37e9b733041))


### 🐛 Bug Fixes

* **changelog:** fix syntax in changelog.md ([1b49b1e](https://git.strausmann.de/minecraft/bedrock-connect/commit/1b49b1e6596de6e2ec6fc48b47f23d27d9403034))
* **releaserc:** fix changelog Title issue ([e8a4927](https://git.strausmann.de/minecraft/bedrock-connect/commit/e8a49275ca8aa55bced675cbc8af370660daf529))

## 2.4.0 (2023-11-02)

### Changed

* Update Base Image "openjdk:22-ea-21-jdk-slim-bookworm"
* Update itzg/easy-add to v0.8.1
* Update itzg/mc_monitor to v0.12.4
* Update itzg/entrypoint-demoter to v0.4.1
* Update docker/buildx to v0.11.2

## 2.3.0 (2023-07-07)

### Changed

* Update itzg/easy-add to v0.8.0
* Update itzg/mc_monitor to v0.12.1
* Update docker/buildx to v0.11.1

## 2.2.0 (2023-05-02)

### Changed

* Update Revert fix for 1.30 ZIP Path

## 2.1.0 (2023-04-18)

### Changed

* Fix 1.30 ZIP Path
* Update easy-add to v0.7.2

## [**2.0.0**] - 2022-11-13

### Added

* Multi Arch Images (amd64,arm64) published on Docker Hub

### Changed

* Update the Docker Base Image to openjdk:20-ea-23-slim-bullseye (#14)

## [**1.5.0**] - 2022-06-21

### Changed

* #9 Define Bedrock Connect version via BRC_VERSION environment variable. Now Bedrock Connect version independent of Docker image.
* Optimize GitLab CI Pipeline

## [**1.4.0**] - 2022-06-07

### Added

* Add console output for the Bedrock Connect Version
* Add console output for the latest apt update

## [**1.3.0**] - 2022-06-07

### Changed

* APT Update 07.06.2022
* 1.19 Bedrock Support

## [**1.2.0**] - 2022-04-21

### Added

* Adds support for Minecraft Bedrock **1.18.30** version clients
* Adds support for env variables
* Adds Docker Tag **strausmann/minecraft-bedrock-connect:1** to use **1.*** images
* Update README

## [**1.0.0**] - 2022-03-12

### Added

* Gitpod Support
