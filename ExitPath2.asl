state("flashplayer_32_sa")
{
    int loading : "flashplayer_32_sa.exe", 0xC9D278, 0xFC, 0x34C, 0x1C, 0x0, 0x74;
}

start
{
    return(current.loading == 0 && old.loading > 1);
}

split
{
    return(old.loading != current.loading && current.loading == 1);
}

isLoading
{
    return(current.loading == 1);
}

reset
{
    return(old.loading != current.loading && current.loading > 1);
}
