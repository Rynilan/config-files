# DEPRECATED
# Use battery_checker.c and alerta.sh instead

from psutil import sensors_battery


def pop_up(nivel: float) -> None:
    """ Create a messagebox to warn about the battery level."""

    from tkinter import messagebox

    messagebox.showwarning("Bateria Baixa",
                           "Bateria em {}%!".format(nivel))


def sound() -> None:
    from pygame import init, mixer

    init()
    mixer.init()
    mixer.music.load(r"/home/Ilan/.config/waybar/shock.mp3")
    mixer.music.play()


def main() -> int:
    bateria = sensors_battery()
    if not bateria.power_plugged:
        match int(bateria.percent):
            case 20:
                if round(bateria.percent, 1) > 20.9:
                    sound()
                    pop_up(20)
            case 10:
                if round(bateria.percent, 1) > 10.9:
                    sound()
                    pop_up(10)
            case 7:
                sound()
                if round(bateria.percent, 1) > 7.9:
                    sound()
                    pop_up(7)
            case _:
                pass
    return 0


if __name__ == "__main__":
    main()
