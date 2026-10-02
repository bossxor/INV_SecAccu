.class Lcom/secaccu/clock/AutoClickOverlay$4;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickOverlay;->button(Landroid/content/Context;Ljava/lang/String;IFLjava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickOverlay;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickOverlay;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$4;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$4;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 210
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 211
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$4;->val$action:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 213
    :cond_0
    return p2
.end method
