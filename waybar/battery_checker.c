#include <stdio.h>
#include <stdlib.h>

#define PATH_DA_BATERIA "/sys/class/power_supply/BAT0/capacity"
#define PATH_DO_CARREGAMENTO "/sys/class/power_supply/ADP0/online"
#define ALERTA "bash ~/.config/waybar/alerta.sh"

int get_battery_level() {
    FILE *arquivo = fopen(PATH_DA_BATERIA, "r");
    if (!arquivo) {
        perror("Erro ao verificar nível da bateria.");
        return -1;
    }
    int nivel;
    fscanf(arquivo, "%d", &nivel);
    fclose(arquivo);
    return nivel;
}

int carregando() {
    FILE *arquivo = fopen(PATH_DO_CARREGAMENTO, "r");
    if (!arquivo) {
        perror("Erro ao verificar se está conectado à energia.");
        return -1;
    }
    int status;
    fscanf(arquivo, "%d", &status);
    fclose(arquivo);
    return status;
}

void alerta() {
    system(ALERTA);
}

int main() {
    if (carregando()) {
        return 0;
    }

    int nivel_de_bateria = get_battery_level();
    if (nivel_de_bateria < 0) {
        return 1;
    }

    if (nivel_de_bateria == 20 || nivel_de_bateria == 10 || nivel_de_bateria == 7) {
        alerta();
    }

    return 0;
}
