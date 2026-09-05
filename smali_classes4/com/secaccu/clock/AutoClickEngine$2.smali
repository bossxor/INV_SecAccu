.class Lcom/secaccu/clock/AutoClickEngine$2;
.super Ljava/lang/Object;
.source "AutoClickEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickEngine;->fireAt(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickEngine;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickEngine;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickEngine$2;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickEngine$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine$2;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickEngine$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickEngine$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/secaccu/clock/AutoClickEngine$2;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    invoke-virtual {v2, v1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v2

    iget-object v3, p0, Lcom/secaccu/clock/AutoClickEngine$2;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    iget-object v4, p0, Lcom/secaccu/clock/AutoClickEngine$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    .line 209
    :cond_0
    return-void
.end method
