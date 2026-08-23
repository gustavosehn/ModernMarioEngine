var _xx, _yy
_xx = 0
repeat (ceil((room_width - x) / 64))
{
    _yy = 0
    repeat (ceil((room_height - y) / 64))
    {
        if (_yy == 0)
            draw_sprite(index, 21, x + _xx * 64, y + _yy * 64)
        else if (_yy == 1)
            draw_sprite(index, 43, x + _xx * 64, y + _yy * 64)
        _yy += 1
    }
    _xx += 1
}