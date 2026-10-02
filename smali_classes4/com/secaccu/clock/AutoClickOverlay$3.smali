.class Lcom/secaccu/clock/AutoClickOverlay$3;
.super Ljava/lang/Object;
.source "AutoClickOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/AutoClickOverlay;->nudge(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/AutoClickOverlay;

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$dx:I

.field final synthetic val$dy:I


# direct methods
.method constructor <init>(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iput-object p2, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$app:Landroid/content/Context;

    iput p3, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$dx:I

    iput p4, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickOverlay;->access$300(Lcom/secaccu/clock/AutoClickOverlay;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$302(Lcom/secaccu/clock/AutoClickOverlay;F)F

    .line 181
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$402(Lcom/secaccu/clock/AutoClickOverlay;F)F

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget v1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$dx:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$316(Lcom/secaccu/clock/AutoClickOverlay;F)F

    .line 184
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget v1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$dy:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$416(Lcom/secaccu/clock/AutoClickOverlay;F)F

    .line 185
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->this$0:Lcom/secaccu/clock/AutoClickOverlay;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickOverlay$3;->val$app:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/secaccu/clock/AutoClickOverlay;->access$800(Lcom/secaccu/clock/AutoClickOverlay;Landroid/content/Context;)V

    .line 186
    return-void
.end method
