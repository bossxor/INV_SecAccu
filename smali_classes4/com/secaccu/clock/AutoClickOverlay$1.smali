.class Lcom/secaccu/clock/AutoClickOverlay$1;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickOverlay;->startPicker(Landroid/content/Context;)Z
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

    .line 62
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 68
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 70
    return v2

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$000(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$000(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_1
    if-ne p1, v2, :cond_2

    .line 76
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->val$app:Landroid/content/Context;

    invoke-virtual {p1, v1, v0, p2}, Lcom/secaccu/clock/AutoClickEngine;->setPosition(Landroid/content/Context;FF)V

    .line 77
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->val$app:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickOverlay;->access$100(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->val$app:Landroid/content/Context;

    invoke-virtual {p1, v1, v0, p2}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    .line 81
    :goto_0
    return v2
.end method
