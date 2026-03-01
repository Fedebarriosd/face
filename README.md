# face

Small personal CLI utilities written in Bash.

Portable, minimal, and shell-agnostic.

---

## Tools

### cb

Universal clipboard utility.

Supports:
- Wayland (`wl-copy`)
- X11 (`xclip`, `xsel`)
- macOS (`pbcopy`)

#### Examples

```bash
cb "hello world"
echo "hello world" | cb
```

---

### face

Copy ASCII faces to the clipboard.

#### Examples

```bash
face lenny
face shrug
face tableflip
face -l
face -s flip
```

#### Available faces (example)

- lenny
- shrug
- tableflip
- unflip
- disapprove
- happy
- cry
- angry

---

## Installation

```bash
git clone https://github.com/Fedebarriosd/face.git
cd face
./install.sh
```

Make sure `~/.local/bin` is in your PATH.

---

## Project Structure

```
face/
│
├── bin/
│   ├── cb
│   └── face
│
├── install.sh
├── README.md
└── LICENSE
```

---

## Philosophy

Free as in freedom, not free pizza. Forever.

---

## License

GNU Affero General Public License 3.0
