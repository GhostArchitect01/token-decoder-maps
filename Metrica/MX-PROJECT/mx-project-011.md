::MX-PROJECT-TASK-011A::
- **Title:** Phase 1A: Procure Hardware
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** 
- **Dependencies:** 
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #mx/project/status/done, #mx/category/build, #PC-Setup, #Phase1, #Hardware
- **Acceptance Criteria:**
- [x] SATA connector for the new internal drive is acquired.
- [x] New keyboard and mouse are acquired.

::MX-PROJECT-TASK-011B::
- **Title:** Phase 1B: Data Consolidation & Backup
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** 
- **Dependencies:** [[mx-project-011.md#::MX-PROJECT-TASK-011A::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #PC-Setup, #Phase1, #Data-Management, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] All important files from all current drives are consolidated onto a single drive.
- [ ] A complete backup of the consolidated data is created on a separate, secure drive.

::MX-PROJECT-TASK-011C::
- **Title:** Phase 2A: Create Artix Linux Bootable USB
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** ArtixLinux
- **Dependencies:** [[mx-project-011.md#::MX-PROJECT-TASK-011B::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #PC-Setup, #Phase2, #OS-Installation, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The latest Artix Linux ISO is downloaded.
- [ ] A bootable USB drive is successfully created with the ISO.

::MX-PROJECT-TASK-011D::
- **Title:** Phase 2B: Reformat and Install Artix Linux
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** ArtixLinux
- **Dependencies:** [[mx-project-011.md#::MX-PROJECT-TASK-011C::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #PC-Setup, #Phase2, #OS-Installation, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] The primary 1TB drive is wiped and re-partitioned.
- [ ] A base Arch Linux installation is successfully completed.

::MX-PROJECT-TASK-011E::
- **Title:** Phase 3A: Post-Install Setup & i3 Configuration
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** ArtixLinux
- **Dependencies:** [[mx-project-011.md#::MX-PROJECT-TASK-011D::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #PC-Setup, #Phase3, #Configuration, #i3wm, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] Essential packages and display drivers are installed.
- [ ] The i3 window manager is installed and configured as the default session.
- [ ] Basic utilities (terminal, file manager) are installed.

::MX-PROJECT-TASK-011F::
- **Title:** Phase 4A: SSH Configuration
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** ArtixLinux
- **Dependencies:** [[mx-project-011.md#::MX-PROJECT-TASK-011E::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #PC-Setup, #Phase4, #Networking, #SSH, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] SSH keys are generated on the new Arch Linux machine.
- [ ] Public key is added to the phone's authorized keys.
- [ ] Secure, passwordless connection from PC to phone is confirmed.

::MX-PROJECT-TASK-011G::
- **Title:** Phase 4B: Git Synchronization
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** Git
- **Dependencies:** [[mx-project-011.md#::MX-PROJECT-TASK-011F::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #PC-Setup, #Phase4, #Git, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] Project repositories are successfully cloned from the phone to the PC via SSH.

::MX-PROJECT-TASK-011H::
- **Title:** Phase 4C: Install Core Dev Tools
- **Parent:** [[MX-USER-TASK-011.md#::MX-USER-TASK-011::]]
- **Framework:** ArtixLinux
- **Dependencies:** [[mx-project-011.md#::MX-PROJECT-TASK-011G::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #PC-Setup, #Phase4, #Tooling, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] `git`, `python`, `node.js`, `pandoc`, `curl`, and a code editor are installed.