# $FreeBSD: head/Mk/Uses/fmake.mk 439485 2017-04-26 19:04:30Z ak $
#
# Provide support to use the legacy FreeBSD make
#
# Feature:		fmake
# Usage:		USES=fmake
#
# MAINTAINER: portmgr@FreeBSD.org

.if !defined(_INCLUDE_USES_FMAKE_MK)
_INCLUDE_USES_FMAKE_MK=	yes

.if !empty(fmake_ARGS)
IGNORE=	Incorrect 'USES+= fmake:${fmake_ARGS}' fmake takes no arguments
.endif

FMAKE=			${LOCALBASE}/bin/fmake
BUILD_DEPENDS+=		${FMAKE}:devel/fmake
CONFIGURE_ENV+=		MAKE=${FMAKE}
MAKE_CMD=		${FMAKE}
.endif
