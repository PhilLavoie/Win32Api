/***********************************************************************\
*                                windef.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.windef;

public import win32.winnt;
private import win32.w32api;

const size_t MAX_PATH = 260;
nothrow {
  ushort MAKEWORD(ubyte a, ubyte b) {
    return cast(ushort) ((b << 8) | a);
  }

  ushort MAKEWORD(ushort a, ushort b) {
      assert((a & 0xFF00) == 0);
      assert((b & 0xFF00) == 0);
      return MAKEWORD(cast(ubyte)a, cast(ubyte)b);
  }

  uint MAKELONG(ushort a, ushort b) {
    return cast(uint) ((b << 16) | a);
  }

  uint MAKELONG(uint a, uint b) {
      assert((a & 0xFFFF0000) == 0);
      assert((b & 0xFFFF0000) == 0);
      return MAKELONG(cast(ushort)a, cast(ushort)b);
  }

  ushort LOWORD(uint l) {
    return cast(ushort) l;
  }

  ushort HIWORD(uint l) {
    return cast(ushort) (l >>> 16);
  }

  ubyte LOBYTE(ushort w) {
    return cast(ubyte) w;
  }

  ubyte HIBYTE(ushort w) {
    return cast(ubyte) (w >>> 8);
  }
}

T max( T )(T a, T b) {
  return a > b ? a : b;
}
T min( T )(T a, T b) {
  return a < b ? a : b;
}

const void* NULL = null;
alias ubyte       BYTE;
alias ubyte*      PBYTE, LPBYTE;
alias ushort      USHORT, WORD, ATOM;
alias ushort*     PUSHORT, PWORD, LPWORD;
alias uint        ULONG, DWORD, UINT, COLORREF;
alias uint*       PULONG, PDWORD, LPDWORD, PUINT, LPUINT;
alias int         WINBOOL, BOOL, INT, LONG, HFILE, HRESULT;
alias int*        PWINBOOL, LPWINBOOL, PBOOL, LPBOOL, PINT, LPINT, LPLONG;
alias float       FLOAT;
alias float*      PFLOAT;
alias CPtr!(void) PCVOID, LPCVOID;

alias UINT_PTR WPARAM;
alias LONG_PTR LPARAM, LRESULT;

alias HANDLE HGLOBAL, HLOCAL, GLOBALHANDLE, LOCALHANDLE, HGDIOBJ, HACCEL,
  HBITMAP, HBRUSH, HCOLORSPACE, HDC, HGLRC, HDESK, HENHMETAFILE, HFONT,
  HICON, HINSTANCE, HKEY, HMENU, HMETAFILE, HMODULE, HMONITOR, HPALETTE, HPEN,
  HRGN, HRSRC, HSTR, HTASK, HWND, HWINSTA, HKL, HCURSOR;
alias HANDLE* PHKEY;

static if (WINVER >= 0x500) {
	alias HANDLE HTERMINAL, HWINEVENTHOOK;
}

alias extern (Windows) int function() FARPROC, NEARPROC, PROC;

struct RECT {
	LONG left;
	LONG top;
	LONG right;
	LONG bottom;
}
alias RECT RECTL;
alias RECT*       PRECT, LPRECT, PRECTL, LPRECTL;
alias CPtr!(RECT) LPCRECT, LPCRECTL;

struct POINT {
	LONG x;
	LONG y;
}
alias POINT POINTL;
alias POINT* PPOINT, LPPOINT, PPOINTL, LPPOINTL;

struct SIZE {
	LONG cx;
	LONG cy;
}
alias SIZE SIZEL;
alias SIZE* PSIZE, LPSIZE, PSIZEL, LPSIZEL;

struct POINTS {
	SHORT x;
	SHORT y;
}
alias POINTS* PPOINTS, LPPOINTS;

enum : BOOL {
	FALSE = 0,
	TRUE  = 1
}
