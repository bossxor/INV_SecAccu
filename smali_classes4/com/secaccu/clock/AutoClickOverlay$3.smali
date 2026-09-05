.class Lcom/secaccu/clock/AutoClickOverlay$3;
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

    .line 105
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickOverlay;->access$000(Lcom/secaccu/clock/AutoClickOverlay;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 112
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 113
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$app:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->setPosition(Landroid/content/Context;FF)V

    .line 114
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hidePicker()V

    .line 115
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$app:Landroid/content/Context;

    .line 118
    const-string v2, "auto_click_pos_set"

    const-string v3, "string"

    invoke-static {v0, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 117
    invoke-virtual {v0, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-virtual {p1, v0, p2}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method
