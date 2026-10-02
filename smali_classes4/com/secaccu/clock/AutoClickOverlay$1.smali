.class Lcom/secaccu/clock/AutoClickOverlay$1;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 81
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->val$app:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$000(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    .line 85
    return-void
.end method
