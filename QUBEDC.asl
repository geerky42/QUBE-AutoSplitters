state("QUBEGame")
{
    float xCoord: 0x3C70A80;
    float yCoord: 0x3C70A84;
}

start
{
    vars.sector = 1;

    vars.isAtStart = -7240 < current.xCoord && current.xCoord < -7220 && 
        -10700 < current.yCoord && current.yCoord < -10680;

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
        current.sector3 = current.xCoord > 17365;
        if (!old.sector3 && current.sector3) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 4
    else if (vars.sector <= 4) {
        current.sector4 = current.xCoord < -18870;
        if (!old.sector4 && current.sector4) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 5
    else if (vars.sector <= 5) {

        current.sector5 = -5700 < current.xCoord && current.xCoord < -5500;
        if (!old.sector5 && current.sector5) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 6
    else if (vars.sector <= 6) {
        current.sector6 = current.yCoord < -31965;
        if (!old.sector6 && current.sector6) {
            vars.sector++;
            return true;
        }
    }
    
    // Sector 7
    else if (vars.sector <= 7) {
        current.sector7 = current.xCoord > 28350;
        if (!old.sector7 && current.sector7) {
            vars.sector++;
            return true;
        }
    }

    return false;
}
