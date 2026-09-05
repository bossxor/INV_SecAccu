.class Lcom/secaccu/clock/AutoClickOverlay$2;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickOverlay;->startPicker(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickOverlay;

.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 73
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->setPosition(Landroid/content/Context;FF)V

    .line 74
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 75
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    .line 78
    const-string v2, "auto_click_pos_set"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 77
    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p1, v1, p2}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return v0

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
