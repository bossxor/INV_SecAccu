.class final Lcom/secaccu/clock/OverlayClockService$DragTouchListener;
.super Ljava/lang/Object;
.source "OverlayClockService.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/OverlayClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DragTouchListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOverlayClockService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverlayClockService.kt\ncom/secaccu/clock/OverlayClockService$DragTouchListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,275:1\n1#2:276\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/secaccu/clock/OverlayClockService$DragTouchListener;",
        "Landroid/view/View$OnTouchListener;",
        "(Lcom/secaccu/clock/OverlayClockService;)V",
        "downX",
        "",
        "downY",
        "startX",
        "",
        "startY",
        "onTouch",
        "",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
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


# instance fields
.field private downX:I

.field private downY:I

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/secaccu/clock/OverlayClockService;


# direct methods
.method public constructor <init>(Lcom/secaccu/clock/OverlayClockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/secaccu/clock/OverlayClockService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v0}, Lcom/secaccu/clock/OverlayClockService;->access$getLayoutParams$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 222
    return v1

    .line 205
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->startX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 206
    .local v1, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->startY:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 207
    .local v2, "dy":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xc

    if-gt v4, v5, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_2

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v4, v3}, Lcom/secaccu/clock/OverlayClockService;->access$setDragging$p(Lcom/secaccu/clock/OverlayClockService;Z)V

    .line 209
    iget-object v4, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v4}, Lcom/secaccu/clock/OverlayClockService;->access$getHandler$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v5}, Lcom/secaccu/clock/OverlayClockService;->access$getLongPress$p(Lcom/secaccu/clock/OverlayClockService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    :cond_2
    iget v4, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->downX:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 212
    iget v4, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->downY:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 213
    iget-object v4, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v4}, Lcom/secaccu/clock/OverlayClockService;->access$getOverlayView$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    .line 276
    .local v4, "it":Landroid/view/View;
    const/4 v6, 0x0

    .line 213
    .local v6, "$i$a$-let-OverlayClockService$DragTouchListener$onTouch$1":I
    invoke-static {v5}, Lcom/secaccu/clock/OverlayClockService;->access$getWindowManager$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/view/WindowManager;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "windowManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_3
    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v5, v4, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .end local v4    # "it":Landroid/view/View;
    .end local v6    # "$i$a$-let-OverlayClockService$DragTouchListener$onTouch$1":I
    :cond_4
    return v3

    .line 217
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :pswitch_1
    iget-object v1, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v1}, Lcom/secaccu/clock/OverlayClockService;->access$getHandler$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v2}, Lcom/secaccu/clock/OverlayClockService;->access$getLongPress$p(Lcom/secaccu/clock/OverlayClockService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v1, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v1}, Lcom/secaccu/clock/OverlayClockService;->access$getDragging$p(Lcom/secaccu/clock/OverlayClockService;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 219
    :cond_5
    return v3

    .line 195
    :pswitch_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->downX:I

    .line 196
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->downY:I

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->startX:F

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->startY:F

    .line 199
    iget-object v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v2, v1}, Lcom/secaccu/clock/OverlayClockService;->access$setDragging$p(Lcom/secaccu/clock/OverlayClockService;Z)V

    .line 200
    iget-object v1, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v1}, Lcom/secaccu/clock/OverlayClockService;->access$getHandler$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v2}, Lcom/secaccu/clock/OverlayClockService;->access$getLongPress$p(Lcom/secaccu/clock/OverlayClockService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v1, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v1}, Lcom/secaccu/clock/OverlayClockService;->access$getHandler$p(Lcom/secaccu/clock/OverlayClockService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/secaccu/clock/OverlayClockService$DragTouchListener;->this$0:Lcom/secaccu/clock/OverlayClockService;

    invoke-static {v2}, Lcom/secaccu/clock/OverlayClockService;->access$getLongPress$p(Lcom/secaccu/clock/OverlayClockService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1c2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
