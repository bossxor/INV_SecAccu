.class Lcom/secaccu/clock/AutoClickOverlay$1;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickOverlay;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$1;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 75
    return-void
.end method
