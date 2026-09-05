.class public Lcom/secaccu/clock/AutoClickService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AutoClickService.java"


# static fields
.field private static volatile instance:Lcom/secaccu/clock/AutoClickService;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickService;->handler:Landroid/os/Handler;

    .line 14
    new-instance v0, Lcom/secaccu/clock/AutoClickService$1;

    invoke-direct {v0, p0}, Lcom/secaccu/clock/AutoClickService$1;-><init>(Lcom/secaccu/clock/AutoClickService;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickService;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Lcom/secaccu/clock/AutoClickService;
    .locals 1

    .line 10
    sget-object v0, Lcom/secaccu/clock/AutoClickService;->instance:Lcom/secaccu/clock/AutoClickService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/secaccu/clock/AutoClickService;)Landroid/os/Handler;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/secaccu/clock/AutoClickService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/secaccu/clock/AutoClickService;
    .locals 1

    .line 25
    sget-object v0, Lcom/secaccu/clock/AutoClickService;->instance:Lcom/secaccu/clock/AutoClickService;

    return-object v0
.end method


# virtual methods
.method public click(FF)Z
    .locals 7

    .line 53
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 57
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    new-instance p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x10

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 60
    new-instance p2, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {p2}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 61
    invoke-virtual {p2, p1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    .line 63
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/secaccu/clock/AutoClickService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    move-result p1

    return p1

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/secaccu/clock/AutoClickService;->instance:Lcom/secaccu/clock/AutoClickService;

    .line 47
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickService;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    sget-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v0}, Lcom/secaccu/clock/AutoClickEngine;->cancelSchedule()V

    .line 49
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 50
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 34
    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 39
    sput-object p0, Lcom/secaccu/clock/AutoClickService;->instance:Lcom/secaccu/clock/AutoClickService;

    .line 40
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickService;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickService;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
