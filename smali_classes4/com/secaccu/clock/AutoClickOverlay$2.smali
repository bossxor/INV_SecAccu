.class Lcom/secaccu/clock/AutoClickOverlay$2;
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

    .line 112
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 118
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v4, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v4}, Lcom/secaccu/clock/AutoClickOverlay;->access$100(Lcom/secaccu/clock/AutoClickOverlay;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float p2, p2, v4

    if-gtz p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->access$202(Lcom/secaccu/clock/AutoClickOverlay;Z)Z

    .line 121
    return v3

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p2, v2}, Lcom/secaccu/clock/AutoClickOverlay;->access$202(Lcom/secaccu/clock/AutoClickOverlay;Z)Z

    .line 124
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p2}, Lcom/secaccu/clock/AutoClickOverlay;->access$300(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result p2

    sub-float/2addr p2, v0

    .line 125
    iget-object v4, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v4}, Lcom/secaccu/clock/AutoClickOverlay;->access$400(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result v4

    sub-float/2addr v4, v1

    .line 126
    iget-object v5, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v5}, Lcom/secaccu/clock/AutoClickOverlay;->access$300(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    mul-float v5, p2, p2

    mul-float v7, v4, v4

    add-float/2addr v5, v7

    float-to-double v7, v5

    iget-object v5, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    const/16 v9, 0x38

    invoke-static {v5, v9}, Lcom/secaccu/clock/AutoClickOverlay;->access$500(Landroid/content/Context;I)I

    move-result v5

    int-to-double v9, v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpg-double v5, v7, v9

    if-gtz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    .line 127
    :goto_0
    iget-object v7, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move p2, v6

    :goto_1
    invoke-static {v7, p2}, Lcom/secaccu/clock/AutoClickOverlay;->access$602(Lcom/secaccu/clock/AutoClickOverlay;F)F

    .line 128
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    invoke-static {p2, v4}, Lcom/secaccu/clock/AutoClickOverlay;->access$702(Lcom/secaccu/clock/AutoClickOverlay;F)F

    goto :goto_3

    .line 129
    :cond_4
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p2}, Lcom/secaccu/clock/AutoClickOverlay;->access$200(Lcom/secaccu/clock/AutoClickOverlay;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 130
    return v3

    .line 129
    :cond_5
    :goto_3
    nop

    .line 132
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v4, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v4}, Lcom/secaccu/clock/AutoClickOverlay;->access$600(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result v4

    add-float/2addr v0, v4

    invoke-static {p2, v0}, Lcom/secaccu/clock/AutoClickOverlay;->access$302(Lcom/secaccu/clock/AutoClickOverlay;F)F

    .line 133
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickOverlay;->access$700(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result v0

    add-float/2addr v1, v0

    invoke-static {p2, v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$402(Lcom/secaccu/clock/AutoClickOverlay;F)F

    .line 134
    if-ne p1, v2, :cond_6

    .line 135
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->access$202(Lcom/secaccu/clock/AutoClickOverlay;Z)Z

    .line 136
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/secaccu/clock/AutoClickOverlay;->access$800(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    goto :goto_4

    .line 137
    :cond_6
    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 138
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {p1, v3}, Lcom/secaccu/clock/AutoClickOverlay;->access$202(Lcom/secaccu/clock/AutoClickOverlay;Z)Z

    goto :goto_4

    .line 140
    :cond_7
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->val$app:Landroid/content/Context;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickOverlay;->access$300(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result v0

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$2;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$400(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    .line 142
    :goto_4
    return v2
.end method
