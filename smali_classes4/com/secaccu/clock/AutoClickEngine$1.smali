.class Lcom/secaccu/clock/AutoClickEngine$1;
.super Ljava/lang/Object;
.source "AutoClickEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/AutoClickEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickEngine;


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickEngine;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickEngine$1;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine$1;->this$0:Lcom/secaccu/clock/AutoClickEngine;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickEngine;->access$000(Lcom/secaccu/clock/AutoClickEngine;)V

    .line 30
    return-void
.end method
