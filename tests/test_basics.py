import pytest


def test_true():
    """prove that pytest is working"""
    assert True


@pytest.mark.xfail
def test_false():
    """prove that pytest is working"""
    assert False
