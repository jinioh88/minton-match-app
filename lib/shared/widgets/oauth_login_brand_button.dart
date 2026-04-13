import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 소셜 로그인 버튼 시각 스펙(배경·테두리·문구)용 구분. 도메인 [OAuth2Provider]와 1:1 대응.
enum OauthLoginBrand { kakao, naver, google, apple }

/// 카카오·네이버·Google·Apple 각 사 가이드에 맞춘 로그인 버튼(색, 테두리, 표준 문구).
class OauthLoginBrandButton extends StatelessWidget {
  const OauthLoginBrandButton({
    super.key,
    required this.brand,
    required this.onPressed,
    this.isLoading = false,
  });

  final OauthLoginBrand brand;
  final VoidCallback? onPressed;
  final bool isLoading;

  static const double _height = 48;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: _height,
      child: switch (brand) {
        OauthLoginBrand.kakao => _KakaoButton(
            onPressed: onPressed,
            isLoading: isLoading,
          ),
        OauthLoginBrand.naver => _NaverButton(
            onPressed: onPressed,
            isLoading: isLoading,
          ),
        OauthLoginBrand.google => _GoogleButton(
            onPressed: onPressed,
            isLoading: isLoading,
          ),
        OauthLoginBrand.apple => _AppleButton(
            onPressed: onPressed,
            isLoading: isLoading,
          ),
      },
    );
  }
}

class _KakaoButton extends StatelessWidget {
  const _KakaoButton({required this.onPressed, required this.isLoading});

  final VoidCallback? onPressed;
  final bool isLoading;

  static const _bg = Color(0xFFFEE500);
  static const _fg = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _bg,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: isLoading ? null : onPressed,
        child: _CenteredBrandRow(
          foreground: _fg,
          isLoading: isLoading,
          loadingColor: _fg,
          icon: const _KakaoMark(size: 20, color: _fg),
          label: '카카오 로그인',
        ),
      ),
    );
  }
}

class _NaverButton extends StatelessWidget {
  const _NaverButton({required this.onPressed, required this.isLoading});

  final VoidCallback? onPressed;
  final bool isLoading;

  static const _bg = Color(0xFF03C75A);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _bg,
      borderRadius: BorderRadius.circular(4),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: isLoading ? null : onPressed,
        child: _CenteredBrandRow(
          foreground: Colors.white,
          isLoading: isLoading,
          loadingColor: Colors.white,
          icon: const _NaverMark(size: 20, color: Colors.white),
          label: '네이버 로그인',
        ),
      ),
    );
  }
}

class _GoogleButton extends StatelessWidget {
  const _GoogleButton({required this.onPressed, required this.isLoading});

  final VoidCallback? onPressed;
  final bool isLoading;

  static const _border = Color(0xFF747775);
  static const _fg = Color(0xFF1F1F1F);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(color: _border, width: 1),
      ),
      child: InkWell(
        onTap: isLoading ? null : onPressed,
        child: _CenteredBrandRow(
          foreground: _fg,
          isLoading: isLoading,
          loadingColor: _fg,
          icon: SvgPicture.asset(
            'assets/oauth/google_g.svg',
            width: 20,
            height: 20,
            excludeFromSemantics: true,
          ),
          label: 'Google 계정으로 로그인',
        ),
      ),
    );
  }
}

class _AppleButton extends StatelessWidget {
  const _AppleButton({required this.onPressed, required this.isLoading});

  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: isLoading ? null : onPressed,
        child: _CenteredBrandRow(
          foreground: Colors.white,
          isLoading: isLoading,
          loadingColor: Colors.white,
          icon: const Icon(Icons.apple, size: 22, color: Colors.white),
          label: 'Apple로 로그인',
        ),
      ),
    );
  }
}

class _CenteredBrandRow extends StatelessWidget {
  const _CenteredBrandRow({
    required this.foreground,
    required this.isLoading,
    required this.loadingColor,
    required this.icon,
    required this.label,
  });

  final Color foreground;
  final bool isLoading;
  final Color loadingColor;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleSmall?.copyWith(
          color: foreground,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxTextW = (constraints.maxWidth - 40).clamp(0.0, double.infinity);
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isLoading)
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: loadingColor,
                    ),
                  )
                else
                  icon,
                const SizedBox(width: 10),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxTextW),
                  child: Text(
                    label,
                    style: style,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// 카카오 심볼 실루엣(말풍선 형태). 공식 에셋 사용 시 [Image.asset]으로 교체 가능.
class _KakaoMark extends StatelessWidget {
  const _KakaoMark({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _KakaoMarkPainter(color: color),
    );
  }
}

class _KakaoMarkPainter extends CustomPainter {
  _KakaoMarkPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    final w = size.width;
    final h = size.height;
    final body = RRect.fromRectAndRadius(
      Rect.fromLTWH(w * 0.08, h * 0.12, w * 0.72, h * 0.62),
      Radius.circular(w * 0.18),
    );
    canvas.drawRRect(body, paint);
    final tail = Path()
      ..moveTo(w * 0.35, h * 0.72)
      ..lineTo(w * 0.22, h * 0.92)
      ..lineTo(w * 0.48, h * 0.74)
      ..close();
    canvas.drawPath(tail, paint);
  }

  @override
  bool shouldRepaint(covariant _KakaoMarkPainter oldDelegate) =>
      oldDelegate.color != color;
}

/// 네이버 N 마크 단순화(흰색 실루엣).
class _NaverMark extends StatelessWidget {
  const _NaverMark({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _NaverMarkPainter(color: color),
    );
  }
}

class _NaverMarkPainter extends CustomPainter {
  _NaverMarkPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;
    final w = size.width;
    final h = size.height;
    final t = w * 0.14;
    final path = Path()
      ..moveTo(t, t)
      ..lineTo(w * 0.42, t)
      ..lineTo(w * 0.42, h * 0.55)
      ..lineTo(w * 0.58, t)
      ..lineTo(w - t, t)
      ..lineTo(w - t, h - t)
      ..lineTo(w * 0.58, h - t)
      ..lineTo(w * 0.58, h * 0.45)
      ..lineTo(w * 0.42, h - t)
      ..lineTo(t, h - t)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _NaverMarkPainter oldDelegate) =>
      oldDelegate.color != color;
}
