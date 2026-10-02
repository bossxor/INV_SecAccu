.class Lcom/secaccu/clock/AutoClickOverlay$2;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private offX:F

.field private offY:F

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

    .line 144
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 150
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p1}, Lcom/secaccu/clock/AutoClickOverlay;->access$200(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickOverlay;->access$300(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 154
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 156
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 157
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->offX:F

    .line 158
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->offY:F

    .line 159
    return v2

    .line 161
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->offX:F

    add-float/2addr v3, v4

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v4, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->offY:F

    add-float/2addr p2, v4

    .line 163
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 164
    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 167
    :try_start_0
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p2}, Lcom/secaccu/clock/AutoClickOverlay;->access$400(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickOverlay;->access$300(Lcom/secaccu/clock/AutoClickOverlay;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    :goto_0
    goto :goto_1

    .line 170
    :cond_2
    if-ne v1, v2, :cond_3

    .line 171
    sget-object p1, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, p2}, Lcom/secaccu/clock/AutoClickEngine;->setPosition(Landroid/content/Context;FF)V

    .line 173
    :cond_3
    :goto_1
    return v2

    .line 152
    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method
