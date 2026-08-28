if (expand == 0)
{
    image_xscale += 0.3
    image_yscale += 0.3
    
    if (image_xscale >= 1)
    {
        image_xscale = 1
        image_yscale = 1
        expand = 1
    }
}
else if (expand == 1)
{
    image_xscale -= 0.3
    image_yscale -= 0.3
    
    if (image_xscale <= 0)
    {
        instance_destroy()
    }
}