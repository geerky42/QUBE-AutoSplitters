state("QUBE")
{
    int LoadCounter: 0x2588264;
    float xCoord: 0x25883D0;
    float yCoord: 0x25883D4;
}

start
{
    vars.sector = 1;

    vars.isAtStart = -8080 < current.xCoord && current.xCoord < -8060 && 
        -11770 < current.yCoord && current.yCoord < -11750;

    return vars.isAtStart;
}

split
{
    // Sector 1
    if (vars.sector <= 1) {
        current.sector1 = current.yCoord < -24960;
        if (!old.sector1 && current.sector1) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 2
    else if (vars.sector <= 2) {
        current.sector2 = current.xCoord > 11255;
        if (!old.sector2 && current.sector2) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 3
    else if (vars.sector <= 3) {
        current.sector3 = current.xCoord > 17300;
        if (!old.sector3 && current.sector3) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 4
    else if (vars.sector <= 4) {
        current.sector4 = current.xCoord < -16375;
        if (!old.sector4 && current.sector4) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 5
    else if (vars.sector <= 5) {
        current.sector5 = current.xCoord > 2000 && current.xCoord < 2490;
        if (!old.sector5 && current.sector5) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 6
    else if (vars.sector <= 6) {
        current.sector6 = current.yCoord < -33650;
        if (!old.sector6 && current.sector6) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 7
    else if (vars.sector <= 7) {
        current.sector7 = current.xCoord > 28370;
        if (!old.sector7 && current.sector7) {
            vars.sector++;
            return true;
        }
    }

    return false;
}
