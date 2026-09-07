.class public final Lcom/secaccu/clock/OverlayClockService;
.super Landroid/app/Service;
.source "OverlayClockService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/secaccu/clock/OverlayClockService$Companion;,
        Lcom/secaccu/clock/OverlayClockService$DragTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOverlayClockService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverlayClockService.kt\ncom/secaccu/clock/OverlayClockService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,275:1\n1#2:276\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0016\u0018\u0000 22\u00020\u0001:\u000223B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0008\u0010\"\u001a\u00020\u001dH\u0002J\u0008\u0010#\u001a\u00020\u001dH\u0002J\u0008\u0010$\u001a\u00020%H\u0002J\u0014\u0010&\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010*\u001a\u00020\u001dH\u0016J\u0008\u0010+\u001a\u00020\u001dH\u0016J\"\u0010,\u001a\u00020-2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020-H\u0016J\u0008\u00100\u001a\u00020\u001dH\u0002J\u0008\u00101\u001a\u00020\u001dH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/secaccu/clock/OverlayClockService;",
        "Landroid/app/Service;",
        "()V",
        "dragging",
        "",
        "handler",
        "Landroid/os/Handler;",
        "layoutParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "longPress",
        "Ljava/lang/Runnable;",
        "metaView",
        "Landroid/widget/TextView;",
        "millisFormat",
        "Ljava/text/SimpleDateFormat;",
        "millisView",
        "overlayBg",
        "Landroid/graphics/drawable/GradientDrawable;",
        "overlayRoot",
        "Landroid/view/View;",
        "overlayView",
        "tick",
        "com/secaccu/clock/OverlayClockService$tick$1",
        "Lcom/secaccu/clock/OverlayClockService$tick$1;",
        "timeFormat",
        "timeView",
        "windowManager",
        "Landroid/view/WindowManager;",
        "applyWarningTint",
        "",
        "progress",
        "",
        "serverMs",
        "",
        "attachOverlay",
        "createChannel",
        "notification",
        "Landroid/app/Notification;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "openApp",
        "render",
        "Companion",
        "DragTouchListener",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_STOP:Ljava/lang/String; = "com.secaccu.clock.STOP_OVERLAY"

.field private static final CHANNEL_ID:Ljava/lang/String; = "overlay_clock"

.field public static final Companion:Lcom/secaccu/clock/OverlayClockService$Companion;

.field private static final NOTI_ID:I = 0x11


# instance fields
.field private dragging:Z

.field private final handler:Landroid/os/Handler;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final longPress:Ljava/lang/Runnable;

.field private metaView:Landroid/widget/TextView;

.field private final millisFormat:Ljava/text/SimpleDateFormat;

.field private millisView:Landroid/widget/TextView;

.field private overlayBg:Landroid/graphics/drawable/GradientDrawable;

.field private overlayRoot:Landroid/view/View;

.field private overlayView:Landroid/view/View;

.field private final tick:Lcom/secaccu/clock/OverlayClockService$tick$1;

.field private final timeFormat:Ljava/text/SimpleDateFormat;

.field private timeView:Landroid/widget/TextView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$XknG385VUkhjj-P7Wlu8jI3TMJ4(Lcom/secaccu/clock/OverlayClockService;)V
    .locals 0

    invoke-static {p0}, Lcom/secaccu/clock/OverlayClockService;->longPress$lambda$2(Lcom/secaccu/clock/OverlayClockService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIWBH68CJFuVimdM9BPRHqmQi64(Lcom/secaccu/clock/OverlayClockService;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/secaccu/clock/OverlayClockService;->attachOverlay$lambda$5(Lcom/secaccu/clock/OverlayClockService;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/secaccu/clock/OverlayClockService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/secaccu/clock/OverlayClockService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/secaccu/clock/OverlayClockService;->Companion:Lcom/secaccu/clock/OverlayClockService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->handler:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v0

    .local v1, "$this$timeFormat_u24lambda_u240":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-apply-OverlayClockService$timeFormat$1":I
    const-string v3, "Asia/Seoul"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 38
    nop

    .line 36
    .end local v1    # "$this$timeFormat_u24lambda_u240":Ljava/text/SimpleDateFormat;
    .end local v2    # "$i$a$-apply-OverlayClockService$timeFormat$1":I
    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "SSS"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v0

    .local v1, "$this$millisFormat_u24lambda_u241":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-apply-OverlayClockService$millisFormat$1":I
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    nop

    .line 39
    .end local v1    # "$this$millisFormat_u24lambda_u241":Ljava/text/SimpleDateFormat;
    .end local v2    # "$i$a$-apply-OverlayClockService$millisFormat$1":I
    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->millisFormat:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v0, Lcom/secaccu/clock/OverlayClockService$tick$1;

    invoke-direct {v0, p0}, Lcom/secaccu/clock/OverlayClockService$tick$1;-><init>(Lcom/secaccu/clock/OverlayClockService;)V

    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->tick:Lcom/secaccu/clock/OverlayClockService$tick$1;

    .line 58
    new-instance v0, Lcom/secaccu/clock/OverlayClockService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/secaccu/clock/OverlayClockService$$ExternalSyntheticLambda0;-><init>(Lcom/secaccu/clock/OverlayClockService;)V

    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->longPress:Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method public static final synthetic access$getDragging$p(Lcom/secaccu/clock/OverlayClockService;)Z
    .locals 1
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;

    .line 33
    iget-boolean v0, p0, Lcom/secaccu/clock/OverlayClockService;->dragging:Z

    return v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/os/Handler;
    .locals 1
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;

    .line 33
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getLayoutParams$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;

    .line 33
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public static final synthetic access$getLongPress$p(Lcom/secaccu/clock/OverlayClockService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;

    .line 33
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->longPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getOverlayView$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;

    .line 33
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->overlayView:Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic access$getWindowManager$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;

    .line 33
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static final synthetic access$render(Lcom/secaccu/clock/OverlayClockService;)V
    .locals 0
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;

    .line 33
    invoke-direct {p0}, Lcom/secaccu/clock/OverlayClockService;->render()V

    return-void
.end method

.method public static final synthetic access$setDragging$p(Lcom/secaccu/clock/OverlayClockService;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/secaccu/clock/OverlayClockService;
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/secaccu/clock/OverlayClockService;->dragging:Z

    return-void
.end method

.method private final applyWarningTint(FJ)V
    .locals 17
    .param p1, "progress"    # F
    .param p2, "serverMs"    # J

    .line 144
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/secaccu/clock/OverlayClockService;->overlayBg:Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/secaccu/clock/OverlayClockService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 146
    .local v2, "density":F
    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/secaccu/clock/R$color;->overlay_fill:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 147
    .local v3, "normalFill":I
    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    sget v5, Lcom/secaccu/clock/R$color;->overlay_alert_fill:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 148
    .local v4, "alertFill":I
    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    sget v6, Lcom/secaccu/clock/R$color;->overlay_flash_fill:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 149
    .local v5, "flashFill":I
    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    sget v7, Lcom/secaccu/clock/R$color;->overlay_stroke:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 150
    .local v6, "normalStroke":I
    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    sget v8, Lcom/secaccu/clock/R$color;->overlay_alert_stroke:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 151
    .local v7, "alertStroke":I
    const/4 v8, 0x0

    .line 152
    .local v8, "fill":I
    const/4 v9, 0x0

    .line 153
    .local v9, "stroke":I
    const/4 v10, 0x0

    cmpg-float v11, v1, v10

    const/4 v12, 0x2

    if-gtz v11, :cond_1

    .line 154
    move v8, v3

    .line 155
    move v9, v6

    goto :goto_2

    .line 157
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v13, v1, v11

    if-ltz v13, :cond_2

    .line 158
    const/16 v13, 0x1a4

    int-to-long v13, v13

    rem-long v13, p2, v13

    long-to-double v13, v13

    const-wide v15, 0x407a400000000000L    # 420.0

    div-double/2addr v13, v15

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v13, v15

    int-to-double v10, v12

    mul-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v13, 0x3fd851eb851eb852L    # 0.38

    mul-double/2addr v10, v13

    const-wide v13, 0x3fe3d70a3d70a3d7L    # 0.62

    add-double/2addr v10, v13

    .line 159
    .local v10, "pulse":D
    double-to-float v13, v10

    const v14, 0x3ecccccd    # 0.4f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v13, v14, v15}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v10

    .end local v10    # "pulse":D
    goto :goto_0

    .line 161
    :cond_2
    move v15, v11

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v10, v1

    const/high16 v11, 0x3e800000    # 0.25f

    add-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v10, v11, v15}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v10

    .line 157
    :goto_0
    nop

    .line 163
    .local v10, "blend":F
    cmpl-float v13, v1, v15

    if-ltz v13, :cond_3

    move v13, v5

    goto :goto_1

    :cond_3
    move v13, v4

    .line 164
    .local v13, "target":I
    :goto_1
    invoke-static {v3, v13, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    .line 165
    const/4 v11, 0x0

    invoke-static {v1, v11, v15}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v11

    invoke-static {v6, v7, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    .line 167
    .end local v10    # "blend":F
    .end local v13    # "target":I
    :goto_2
    iget-object v10, v0, Lcom/secaccu/clock/OverlayClockService;->overlayBg:Landroid/graphics/drawable/GradientDrawable;

    const/4 v11, 0x0

    const-string v13, "overlayBg"

    if-nez v10, :cond_4

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v11

    :cond_4
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 168
    iget-object v10, v0, Lcom/secaccu/clock/OverlayClockService;->overlayBg:Landroid/graphics/drawable/GradientDrawable;

    if-nez v10, :cond_5

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v11, v10

    :goto_3
    int-to-float v10, v12

    mul-float/2addr v10, v2

    float-to-int v10, v10

    invoke-static {v10, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    invoke-virtual {v11, v10, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 169
    return-void
.end method

.method private final attachOverlay()V
    .locals 10

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/secaccu/clock/R$layout;->overlay_clock:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->overlayRoot:Landroid/view/View;

    .line 97
    sget v1, Lcom/secaccu/clock/R$id;->overlayTime:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/secaccu/clock/OverlayClockService;->timeView:Landroid/widget/TextView;

    .line 98
    sget v1, Lcom/secaccu/clock/R$id;->overlayMillis:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/secaccu/clock/OverlayClockService;->millisView:Landroid/widget/TextView;

    .line 99
    sget v1, Lcom/secaccu/clock/R$id;->overlayMeta:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/secaccu/clock/OverlayClockService;->metaView:Landroid/widget/TextView;

    .line 100
    sget v1, Lcom/secaccu/clock/R$id;->overlayClose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    new-instance v3, Lcom/secaccu/clock/OverlayClockService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/secaccu/clock/OverlayClockService$$ExternalSyntheticLambda1;-><init>(Lcom/secaccu/clock/OverlayClockService;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/secaccu/clock/OverlayClockService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41900000    # 18.0f

    mul-float/2addr v1, v3

    .line 102
    .local v1, "radius":F
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v4, v3

    .local v4, "$this$attachOverlay_u24lambda_u246":Landroid/graphics/drawable/GradientDrawable;
    const/4 v5, 0x0

    .line 103
    .local v5, "$i$a$-apply-OverlayClockService$attachOverlay$2":I
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 104
    nop

    .line 102
    .end local v4    # "$this$attachOverlay_u24lambda_u246":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "$i$a$-apply-OverlayClockService$attachOverlay$2":I
    iput-object v3, p0, Lcom/secaccu/clock/OverlayClockService;->overlayBg:Landroid/graphics/drawable/GradientDrawable;

    .line 105
    iget-object v3, p0, Lcom/secaccu/clock/OverlayClockService;->overlayBg:Landroid/graphics/drawable/GradientDrawable;

    if-nez v3, :cond_0

    const-string v3, "overlayBg"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_0
    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 114
    nop

    .line 107
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    const/16 v8, 0x308

    const/4 v9, -0x3

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 115
    nop

    .local v4, "$this$attachOverlay_u24lambda_u247":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    .line 116
    .local v5, "$i$a$-apply-OverlayClockService$attachOverlay$params$1":I
    const v6, 0x800033

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 117
    const/16 v6, 0x30

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 118
    const/16 v6, 0xb4

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 119
    nop

    .line 115
    .end local v4    # "$this$attachOverlay_u24lambda_u247":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "$i$a$-apply-OverlayClockService$attachOverlay$params$1":I
    nop

    .line 107
    nop

    .line 120
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object v3, p0, Lcom/secaccu/clock/OverlayClockService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 121
    new-instance v4, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;

    invoke-direct {v4, p0}, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;-><init>(Lcom/secaccu/clock/OverlayClockService;)V

    check-cast v4, Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    iget-object v4, p0, Lcom/secaccu/clock/OverlayClockService;->windowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    const-string v4, "windowManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v2, v0, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->overlayView:Landroid/view/View;

    .line 124
    invoke-direct {p0}, Lcom/secaccu/clock/OverlayClockService;->render()V

    .line 125
    return-void
.end method

.method private static final attachOverlay$lambda$5(Lcom/secaccu/clock/OverlayClockService;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/secaccu/clock/OverlayClockService;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/secaccu/clock/OverlayClockService;->stopSelf()V

    return-void
.end method

.method private final createChannel()V
    .locals 5

    .line 227
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/secaccu/clock/OverlayClockService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 228
    .local v0, "manager":Landroid/app/NotificationManager;
    nop

    .line 229
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "\uc11c\ubc84\uc2dc\uac04 \uc624\ubc84\ub808\uc774"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const-string v4, "overlay_clock"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 231
    return-void
.end method

.method private static final longPress$lambda$2(Lcom/secaccu/clock/OverlayClockService;)V
    .locals 1
    .param p0, "this$0"    # Lcom/secaccu/clock/OverlayClockService;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/secaccu/clock/OverlayClockService;->dragging:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/secaccu/clock/OverlayClockService;->openApp()V

    .line 60
    :cond_0
    return-void
.end method

.method private final notification()Landroid/app/Notification;
    .locals 7

    .line 235
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 236
    nop

    .line 237
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/secaccu/clock/OverlayClockService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.secaccu.clock.STOP_OVERLAY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 238
    nop

    .line 234
    const/4 v2, 0x1

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 241
    .local v0, "stop":Landroid/app/PendingIntent;
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 242
    nop

    .line 243
    new-instance v4, Landroid/content/Intent;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    const-class v6, Lcom/secaccu/clock/MainActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    nop

    .line 240
    const/4 v5, 0x2

    invoke-static {v1, v5, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 246
    .local v1, "open":Landroid/app/PendingIntent;
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const-string v5, "overlay_clock"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    sget v4, Lcom/secaccu/clock/R$drawable;->ic_stat_clock:I

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 248
    const-string v4, "SecAccu \uc11c\ubc84\uc2dc\uac04"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 249
    const-string v4, "\ub2e4\ub978 \uc571 \uc704\uc5d0 \uc2dc\uacc4\ub97c \ub744\uc6b4 \uc0c1\ud0dc\uc785\ub2c8\ub2e4"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 250
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 251
    const-string v4, "\ub2eb\uae30"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 252
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    return-object v2
.end method

.method private final openApp()V
    .locals 4

    .line 172
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/secaccu/clock/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$openApp_u24lambda_u248":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 173
    .local v2, "$i$a$-apply-OverlayClockService$openApp$intent$1":I
    nop

    .line 174
    nop

    .line 173
    const/high16 v3, 0x30220000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    nop

    .line 172
    .end local v1    # "$this$openApp_u24lambda_u248":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-OverlayClockService$openApp$intent$1":I
    nop

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/secaccu/clock/OverlayClockService;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method private final render()V
    .locals 9

    .line 128
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    .local v0, "snap":Lcom/secaccu/clock/ServerClock$Snapshot;
    :cond_0
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v1

    double-to-long v1, v1

    .line 130
    .local v1, "millis":J
    iget-object v3, p0, Lcom/secaccu/clock/OverlayClockService;->timeView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/secaccu/clock/OverlayClockService;->timeFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/secaccu/clock/OverlayClockService;->millisView:Landroid/widget/TextView;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/secaccu/clock/OverlayClockService;->millisFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_1
    iget-object v4, p0, Lcom/secaccu/clock/OverlayClockService;->metaView:Landroid/widget/TextView;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/secaccu/clock/ExactHourAlarm;->syncTargetToFormatter(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/secaccu/clock/PressHintFormatter;->formatShort(DD)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_3
    sget-object v4, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/secaccu/clock/ExactHourAlarm;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 135
    sget-object v4, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    sget-object v5, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/secaccu/clock/ExactHourAlarm;->leadSeconds(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/secaccu/clock/ExactHourAlarm;->warningProgress(JI)F

    move-result v4

    goto :goto_4

    .line 137
    :cond_5
    const/4 v4, 0x0

    .line 134
    :goto_4
    nop

    .line 139
    .local v4, "progress":F
    invoke-direct {p0, v4, v1, v2}, Lcom/secaccu/clock/OverlayClockService;->applyWarningTint(FJ)V

    .line 140
    sget-object v5, Lcom/secaccu/clock/ExactHourAlarm;->INSTANCE:Lcom/secaccu/clock/ExactHourAlarm;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v2}, Lcom/secaccu/clock/ExactHourAlarm;->evaluate(Landroid/content/Context;J)V

    sget-object v5, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->evaluate(Landroid/content/Context;)V

    .line 141
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/secaccu/clock/OverlayClockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->windowManager:Landroid/view/WindowManager;

    .line 68
    invoke-direct {p0}, Lcom/secaccu/clock/OverlayClockService;->createChannel()V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/16 v2, 0x11

    if-lt v0, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/secaccu/clock/OverlayClockService;->notification()Landroid/app/Notification;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v2, v0, v1}, Lcom/secaccu/clock/OverlayClockService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/secaccu/clock/OverlayClockService;->notification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/secaccu/clock/OverlayClockService;->startForeground(ILandroid/app/Notification;)V

    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/secaccu/clock/OverlayClockService;->attachOverlay()V

    .line 75
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/OverlayClockService;->tick:Lcom/secaccu/clock/OverlayClockService$tick$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/OverlayClockService;->tick:Lcom/secaccu/clock/OverlayClockService$tick$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/OverlayClockService;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService;->overlayView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 276
    .local v0, "it":Landroid/view/View;
    const/4 v2, 0x0

    .line 89
    .local v2, "$i$a$-let-OverlayClockService$onDestroy$1":I
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/secaccu/clock/OverlayClockService;

    .line 276
    .local v3, "$this$onDestroy_u24lambda_u244_u24lambda_u243":Lcom/secaccu/clock/OverlayClockService;
    const/4 v4, 0x0

    .line 89
    .local v4, "$i$a$-runCatching-OverlayClockService$onDestroy$1$1":I
    iget-object v5, v3, Lcom/secaccu/clock/OverlayClockService;->windowManager:Landroid/view/WindowManager;

    if-nez v5, :cond_0

    const-string v5, "windowManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_0
    invoke-interface {v5, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .end local v3    # "$this$onDestroy_u24lambda_u244_u24lambda_u243":Lcom/secaccu/clock/OverlayClockService;
    .end local v4    # "$i$a$-runCatching-OverlayClockService$onDestroy$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v0    # "it":Landroid/view/View;
    .end local v2    # "$i$a$-let-OverlayClockService$onDestroy$1":I
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 90
    :cond_1
    iput-object v1, p0, Lcom/secaccu/clock/OverlayClockService;->overlayView:Landroid/view/View;

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 92
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.secaccu.clock.STOP_OVERLAY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/secaccu/clock/OverlayClockService;->stopSelf()V

    .line 81
    const/4 v0, 0x2

    return v0

    .line 83
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
