.class final Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secaccu/clock/MainActivity$runSync$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "msg",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secaccu/clock/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$rIS860iT4TshGy_pT405WPjAR5w(Lcom/secaccu/clock/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1;->invoke$lambda$0(Lcom/secaccu/clock/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/secaccu/clock/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1;->this$0:Lcom/secaccu/clock/MainActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/secaccu/clock/MainActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "this$0"    # Lcom/secaccu/clock/MainActivity;
    .param p1, "$msg"    # Ljava/lang/String;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {p0}, Lcom/secaccu/clock/MainActivity;->access$getBinding$p(Lcom/secaccu/clock/MainActivity;)Lcom/secaccu/clock/databinding/ActivityMainBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/secaccu/clock/databinding/ActivityMainBinding;->statusText:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 231
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1;->invoke(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1;->this$0:Lcom/secaccu/clock/MainActivity;

    iget-object v1, p0, Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1;->this$0:Lcom/secaccu/clock/MainActivity;

    new-instance v2, Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/secaccu/clock/MainActivity$runSync$1$result$1$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/secaccu/clock/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/secaccu/clock/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
