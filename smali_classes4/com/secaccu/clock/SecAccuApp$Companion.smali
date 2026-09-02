.class public final Lcom/secaccu/clock/SecAccuApp$Companion;
.super Ljava/lang/Object;
.source "SecAccuApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/SecAccuApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/secaccu/clock/SecAccuApp$Companion;",
        "",
        "()V",
        "<set-?>",
        "Lcom/secaccu/clock/SecAccuApp;",
        "instance",
        "getInstance",
        "()Lcom/secaccu/clock/SecAccuApp;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/secaccu/clock/SecAccuApp$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/secaccu/clock/SecAccuApp;
    .locals 1

    .line 12
    invoke-static {}, Lcom/secaccu/clock/SecAccuApp;->access$getInstance$cp()Lcom/secaccu/clock/SecAccuApp;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method
